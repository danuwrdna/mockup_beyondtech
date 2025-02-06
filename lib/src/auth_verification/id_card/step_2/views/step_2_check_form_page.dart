import 'dart:io';

import 'package:bpay_mobile/src/auth_verification/id_card/step_1/model/ocr_ktp_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/city_regency/city_regency_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/current_city_regency/current_city_regency_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/current_district/current_district_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/current_province/current_province_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/district/district_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/bloc/province/province_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/city_regency_list_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/district_list_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/gender_enum.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/id_card_verification_data_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/province_list_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/views/step_2_check_page.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/labeled_dropdown_menu.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/step_progress_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class Step2CheckFormPage extends StatefulWidget {
  const Step2CheckFormPage({super.key, this.data, required this.idCardImage});

  final OcrKtpResponseData? data;
  final File idCardImage;

  @override
  State<Step2CheckFormPage> createState() => _Step2CheckFormPageState();
}

class _Step2CheckFormPageState extends State<Step2CheckFormPage> {
  // PERSONAL DATA
  Gender? gender;
  TextEditingController nikController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController placeOfBirthController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController maritalStatusController = TextEditingController();
  TextEditingController religionController = TextEditingController();

  // KTP ADDRESS
  TextEditingController ktpCountryController = TextEditingController();
  TextEditingController ktpProvinceController = TextEditingController();
  TextEditingController ktpCityRegencyController = TextEditingController();
  TextEditingController ktpDistrictController = TextEditingController();
  TextEditingController ktpAddressController = TextEditingController();

  // KTP ADDRESS DROPDOWNS
  bool isKtpCountryIndonesia = false;
  List<ProvinceData>? provinceList;
  ProvinceData? provinceValue;
  bool isProvinceEnabled = false;
  List<CityRegencyData>? cityRegencyList;
  CityRegencyData? cityRegencyValue;
  bool isCityRegencyEnabled = false;
  List<DistrictData>? districtList;
  DistrictData? districtValue;
  bool isDistrictEnabled = false;

  // CURRENT ADDRESS
  bool isCurrentAddressMatch = false;
  TextEditingController currentCountryController = TextEditingController();
  TextEditingController currentProvinceController = TextEditingController();
  TextEditingController currentCityRegencyController = TextEditingController();
  TextEditingController currentDistrictController = TextEditingController();
  TextEditingController currentAddressController = TextEditingController();

  // CURRENT ADDRESS DROPDOWNS
  bool isCurrentCountryIndonesia = false;
  List<ProvinceData>? currentProvinceList;
  ProvinceData? currentProvinceValue;
  bool isCurrentProvinceEnabled = false;
  List<CityRegencyData>? currentCityRegencyList;
  CityRegencyData? currentCityRegencyValue;
  bool isCurrentCityRegencyEnabled = false;
  List<DistrictData>? currentDistrictList;
  DistrictData? currentDistrictValue;
  bool isCurrentDistrictEnabled = false;

  // ERROR MESSAGES
  String? nikError;
  String? fullNameError;
  String? genderError;
  String? placeOfBirthError;
  String? dateOfBirthError;
  String? occupationError;
  String? nationalityError;
  String? maritalStatusError;
  String? religionError;
  String? ktpCountryError;
  String? ktpProvinceDropdownError;
  String? ktpProvinceInputError;
  String? ktpCityRegencyDropdownError;
  String? ktpCityRegencyInputError;
  String? ktpDistrictDropdownError;
  String? ktpDistrictInputError;
  String? ktpAddressError;
  String? currentCountryError;
  String? currentProvinceDropdownError;
  String? currentProvinceInputError;
  String? currentCityRegencyDropdownError;
  String? currentCityRegencyInputError;
  String? currentDistrictDropdownError;
  String? currentDistrictInputError;
  String? currentAddressError;

  // PERSONAL DATA VALIDATIONS
  void validateNik(String value) {
    if (value.isEmpty) {
      setState(() => nikError = 'NIK can not be empty');
    } else if (value.length != 16) {
      setState(() => nikError = 'NIK must be exactly 16 characters');
    } else {
      setState(() => nikError = null);
    }
  }

  void validateFullName(String value) {
    if (value.isEmpty) {
      setState(() => fullNameError = 'Full name can not be empty');
    } else {
      setState(() => fullNameError = null);
    }
  }

  void validateGender(Gender? gender) {
    if (gender == null) {
      setState(() => genderError = 'Gender can not be empty');
    } else {
      setState(() => genderError = null);
    }
  }

  void validatePlaceOfBirth(String value) {
    if (value.isEmpty) {
      setState(() => placeOfBirthError = 'Place of birth can not be empty');
    } else {
      setState(() => placeOfBirthError = null);
    }
  }

  void validateDateOfBirth(String value) {
    if (value.isEmpty) {
      setState(() => dateOfBirthError = 'Date of birth can not be empty');
    } else {
      setState(() => dateOfBirthError = null);
    }
  }

  void validateOccupation(String value) {
    if (value.isEmpty) {
      setState(() => occupationError = "Occupation can not be empty");
    } else {
      setState(() => occupationError = null);
    }
  }

  void validateNationality(String value) {
    if (value.isEmpty) {
      setState(() => nationalityError = "Nationality can not be empty");
    } else {
      setState(() => nationalityError = null);
    }
  }

  void validateMaritalStatus(String value) {
    if (value.isEmpty) {
      setState(() => maritalStatusError = "Marital status can not be empty");
    } else {
      setState(() => maritalStatusError = null);
    }
  }

  void validateReligion(String value) {
    if (value.isEmpty) {
      setState(() => religionError = "Religion can not be empty");
    } else {
      setState(() => religionError = null);
    }
  }

  // KTP ADDRESS VALIDATIONS
  void validateKtpCountry(String value) {
    if (value.isEmpty) {
      setState(() => ktpCountryError = "Country can not be empty");
    } else {
      setState(() => ktpCountryError = null);
    }
  }

  void validateKtpProvince() {
    if (isKtpCountryIndonesia) {
      if (provinceValue == null) {
        setState(() => ktpProvinceDropdownError = "Province can not be empty");
      } else {
        setState(() {
          ktpProvinceDropdownError = null;
          ktpProvinceInputError = null;
        });
      }
    } else {
      if (ktpProvinceController.text.isEmpty) {
        setState(() => ktpProvinceInputError = "Province can not be empty");
      } else {
        setState(() {
          ktpProvinceDropdownError = null;
          ktpProvinceInputError = null;
        });
      }
    }
  }

  void validateKtpCityRegency() {
    if (isKtpCountryIndonesia) {
      if (cityRegencyValue == null) {
        setState(() =>
            ktpCityRegencyDropdownError = "City/Regency can not be empty");
      } else {
        setState(() {
          ktpCityRegencyDropdownError = null;
          ktpCityRegencyInputError = null;
        });
      }
    } else {
      if (ktpCityRegencyController.text.isEmpty) {
        setState(
            () => ktpCityRegencyInputError = "City/Regency can not be empty");
      } else {
        setState(() {
          ktpCityRegencyDropdownError = null;
          ktpCityRegencyInputError = null;
        });
      }
    }
  }

  void validateKtpDistrict() {
    if (isKtpCountryIndonesia) {
      if (districtValue == null) {
        setState(() => ktpDistrictDropdownError = "District can not be empty");
      } else {
        setState(() {
          ktpDistrictDropdownError = null;
          ktpDistrictInputError = null;
        });
      }
    } else {
      if (ktpDistrictController.text.isEmpty) {
        setState(() => ktpDistrictInputError = "District can not be empty");
      } else {
        setState(() {
          ktpDistrictDropdownError = null;
          ktpDistrictInputError = null;
        });
      }
    }
  }

  void validateKtpAddress(String value) {
    if (value.isEmpty) {
      setState(() => ktpAddressError = "Address can not be empty");
    } else {
      setState(() => ktpAddressError = null);
    }
  }

  // CURRENT ADDRESS VALIDATIONS
  void validateCurrentCountry(String value) {
    if (value.isEmpty) {
      setState(() => currentCountryError = "Country can not be empty");
    } else {
      setState(() => currentCountryError = null);
    }
  }

  void validateCurrentProvince() {
    if (isCurrentCountryIndonesia) {
      if (currentProvinceValue == null) {
        setState(
            () => currentProvinceDropdownError = "Province can not be empty");
      } else {
        setState(() {
          currentProvinceDropdownError = null;
          currentProvinceInputError = null;
        });
      }
    } else {
      if (currentProvinceController.text.isEmpty) {
        setState(() => currentProvinceInputError = "Province can not be empty");
      } else {
        setState(() {
          currentProvinceDropdownError = null;
          currentProvinceInputError = null;
        });
      }
    }
  }

  void validateCurrentCityRegency() {
    if (isCurrentCountryIndonesia) {
      if (currentCityRegencyValue == null) {
        setState(() =>
            currentCityRegencyDropdownError = "City/Regency can not be empty");
      } else {
        setState(() {
          currentCityRegencyDropdownError = null;
          currentCityRegencyInputError = null;
        });
      }
    } else {
      if (currentCityRegencyController.text.isEmpty) {
        setState(() =>
            currentCityRegencyInputError = "City/Regency can not be empty");
      } else {
        setState(() {
          currentCityRegencyDropdownError = null;
          currentCityRegencyInputError = null;
        });
      }
    }
  }

  void validateCurrentDistrict() {
    if (isCurrentCountryIndonesia) {
      if (currentDistrictValue == null) {
        setState(
            () => currentDistrictDropdownError = "District can not be empty");
      } else {
        setState(() {
          currentDistrictDropdownError = null;
          currentDistrictInputError = null;
        });
      }
    } else {
      if (currentDistrictController.text.isEmpty) {
        setState(() => currentDistrictInputError = "District can not be empty");
      } else {
        setState(() {
          currentDistrictDropdownError = null;
          currentDistrictInputError = null;
        });
      }
    }
  }

  void validateCurrentAddress(String value) {
    if (value.isEmpty) {
      setState(() => currentAddressError = "Address can not be empty");
    } else {
      setState(() => currentAddressError = null);
    }
  }

  @override
  void initState() {
    context.read<ProvinceBloc>().add(const ProvinceEvent.getProvinceList());
    setState(() {
      // SET PERSONAL DATA
      nikController.text = widget.data?.nik ?? "";
      fullNameController.text = widget.data?.fullName ?? "";
      if (widget.data?.gender?.trim().toLowerCase() ==
              Gender.male.labelId.trim().toLowerCase() ||
          widget.data?.gender?.trim().toLowerCase() ==
              Gender.male.labelEn.trim().toLowerCase()) {
        gender = Gender.male;
      } else if (widget.data?.gender?.trim().toLowerCase() ==
              Gender.female.labelId.trim().toLowerCase() ||
          widget.data?.gender?.trim().toLowerCase() ==
              Gender.female.labelEn.trim().toLowerCase()) {
        gender = Gender.female;
      }
      placeOfBirthController.text = widget.data?.placeOfBirth ?? "";
      dateOfBirthController.text = widget.data?.dateOfBirth ?? "";
      occupationController.text = widget.data?.occupation ?? "";
      nationalityController.text = widget.data?.nationality ?? "";
      maritalStatusController.text = widget.data?.maritalStatus ?? "";
      religionController.text = widget.data?.religion ?? "";

      // SET KTP ADDRESS
      ktpProvinceController.text = widget.data?.state ?? "";
      ktpCityRegencyController.text = widget.data?.city ?? "";
      ktpDistrictController.text = widget.data?.district ?? "";
      ktpAddressController.text = widget.data?.address ?? "";
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "Complete Verification",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        shadowColor: ColorResource.black100.withOpacity(0.16),
        elevation: 4,
        surfaceTintColor: ColorResource.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StepProgressWidget(
                stepLabel: "Check KTP Data",
                currentStep: 2,
                totalStep: 3,
              ),
              const SizedBox(height: 24),
              Text(
                "Ensure your data matches with the data in KTP.",
                style: TextStyle(fontSize: 12.sp),
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.icPersonalData),
                  const SizedBox(width: 16),
                  Text(
                    "Personal Data",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              Text(
                "NIK",
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeightResource.medium,
                ),
              ),
              const SizedBox(height: 6),
              LabeledTextField(
                controller: nikController,
                enabled: widget.data?.nik?.length != 16,
                hintText: "XXXXXXXXXXXXXXXX",
                hintStyle: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeightResource.medium,
                  color: ColorResource.black100.withOpacity(0.4),
                ),
                errorText: nikError,
                maxLength: 16,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                enabledColor: ColorResource.blue900,
                onChanged: (value) => setState(() => nikError = null),
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: fullNameController,
                labelText: "Full Name",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: fullNameError,
                onChanged: (value) => setState(() => fullNameError = null),
              ),
              const SizedBox(height: 16),
              LabeledDropdownMenu(
                labelText: "Gender",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                items: Gender.values.map<DropdownMenuItem<String>>(
                  (Gender value) {
                    return DropdownMenuItem<String>(
                      value: value.labelEn,
                      child: Text(value.labelEn),
                    );
                  },
                ).toList(),
                errorText: genderError,
                onChanged: (value) {
                  setState(() {
                    gender = Gender.values
                        .where((e) => e.labelEn == value)
                        .firstOrNull;
                    genderError = null;
                  });
                },
                value: gender?.labelEn,
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: placeOfBirthController,
                labelText: "Place of Birth",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: placeOfBirthError,
                onChanged: (value) => setState(() => placeOfBirthError = null),
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                onTap: () async {
                  final DateTime? date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1950),
                    lastDate: DateTime.now(),
                    initialDatePickerMode: dateOfBirthController.text.isNotEmpty
                        ? DatePickerMode.day
                        : DatePickerMode.year,
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    currentDate: DateFormat("dd-MM-yyyy")
                        .tryParse(dateOfBirthController.text),
                    initialDate: DateFormat("dd-MM-yyyy")
                        .tryParse(dateOfBirthController.text),
                  );
                  if (date != null) {
                    dateOfBirthController.text =
                        DateFormat("dd-MM-yyyy").format(date);
                    setState(() => dateOfBirthError = null);
                  }
                },
                readOnly: true,
                controller: dateOfBirthController,
                labelText: "Date of Birth",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                suffixIcon: const Icon(Icons.date_range_rounded),
                errorText: dateOfBirthError,
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: occupationController,
                labelText: "Occupation (may differ from the KTP)",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: occupationError,
                onChanged: (value) => setState(() => occupationError = null),
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: nationalityController,
                labelText: "Nationality",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: nationalityError,
                onChanged: (value) => setState(() => nationalityError = null),
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: maritalStatusController,
                labelText: "Marital Status",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: maritalStatusError,
                onChanged: (value) => setState(() => maritalStatusError = null),
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: religionController,
                labelText: "Religion",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: religionError,
                onChanged: (value) => setState(() => religionError = null),
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  SvgPicture.asset(Assets.icons.icAddress),
                  const SizedBox(width: 16),
                  Text(
                    "KTP Address",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              BlocListener<ProvinceBloc, ProvinceState>(
                listener: (context, state) {
                  state.when(
                    initial: () {},
                    loading: () {},
                    success: (data) {
                      String? ktpProvince;
                      if (widget.data?.state
                              ?.toUpperCase()
                              .contains("PROVINSI") ??
                          false) {
                        ktpProvince = widget.data?.state
                            ?.toUpperCase()
                            .replaceAll("PROVINSI ", "");
                      } else {
                        ktpProvince = widget.data?.state;
                      }
                      setState(() {
                        provinceList = data.data?.data;
                        if (provinceList?.isNotEmpty ?? false) {
                          isProvinceEnabled = true;
                        }
                        final provinceDataSameAsKtpProvince =
                            provinceList?.where((element) =>
                                element.name?.trim().toLowerCase() ==
                                ktpProvince?.trim().toLowerCase());
                        if (provinceDataSameAsKtpProvince?.length == 1) {
                          ktpCountryController.text = "Indonesia";
                          isKtpCountryIndonesia = true;
                          provinceValue =
                              provinceDataSameAsKtpProvince?.firstOrNull;
                          context.read<CityRegencyBloc>().add(
                              CityRegencyEvent.getCityRegency(
                                  provinceValue?.id ?? ""));
                        }
                      });
                    },
                    failed: (message) {
                      if (kDebugMode) {
                        print(message);
                      }
                    },
                  );
                },
                child: LabeledTextField(
                  controller: ktpCountryController,
                  labelText: "Country",
                  color: ColorResource.blue900,
                  enabledColor: ColorResource.blue900,
                  errorText: ktpCountryError,
                  onChanged: (value) async {
                    await Future.delayed(const Duration(milliseconds: 500));
                    if (value.trim().toLowerCase() == "indonesia") {
                      setState(() {
                        districtValue = null;
                        districtList = null;
                        isDistrictEnabled = false;
                        cityRegencyValue = null;
                        cityRegencyList = null;
                        isCityRegencyEnabled = false;
                        provinceValue = null;
                        provinceList = null;
                        isProvinceEnabled = false;
                        isKtpCountryIndonesia = true;
                      });
                      if (context.mounted) {
                        context
                            .read<ProvinceBloc>()
                            .add(const ProvinceEvent.getProvinceList());
                      }
                    } else {
                      setState(() => isKtpCountryIndonesia = false);
                    }
                    if (ktpCountryError != null) {
                      setState(() => ktpCountryError = null);
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),
              if (isKtpCountryIndonesia) ...[
                LabeledDropdownMenu(
                  labelText: "Province",
                  color: ColorResource.blue900,
                  enabledColor: ColorResource.blue900,
                  enabled: isProvinceEnabled,
                  value: provinceValue?.id.toString(),
                  items: provinceList?.map<DropdownMenuItem<String>>(
                    (value) {
                      return DropdownMenuItem<String>(
                        value: value.id,
                        child: SizedBox(
                          width: 75.w,
                          child: Text(value.name ?? ""),
                        ),
                      );
                    },
                  ).toList(),
                  menuMaxHeight: 300,
                  errorText: ktpProvinceDropdownError,
                  onChanged: (value) {
                    setState(() {
                      districtValue = null;
                      districtList = null;
                      isDistrictEnabled = false;
                      cityRegencyValue = null;
                      cityRegencyList = null;
                      isCityRegencyEnabled = false;
                      provinceValue =
                          provinceList?.where((e) => e.id == value).firstOrNull;
                      ktpProvinceDropdownError = null;
                    });
                    context
                        .read<CityRegencyBloc>()
                        .add(CityRegencyEvent.getCityRegency(value ?? ""));
                  },
                ),
                const SizedBox(height: 16),
                BlocListener<CityRegencyBloc, CityRegencyState>(
                  listener: (context, state) {
                    state.when(
                      initial: () {},
                      loading: () {},
                      success: (data) {
                        String? ktpCityRegency;
                        if (widget.data?.city
                                ?.toUpperCase()
                                .contains("KABUPATEN") ??
                            false) {
                          ktpCityRegency = widget.data?.city
                              ?.toUpperCase()
                              .replaceAll("KABUPATEN ", "");
                        } else if (widget.data?.city
                                ?.toUpperCase()
                                .contains("KOTA") ??
                            false) {
                          ktpCityRegency = widget.data?.city
                              ?.toUpperCase()
                              .replaceAll("KOTA ", "");
                        } else {
                          ktpCityRegency = widget.data?.city;
                        }
                        setState(() {
                          cityRegencyList = data.data?.data;
                          if (cityRegencyList?.isNotEmpty ?? false) {
                            isCityRegencyEnabled = true;
                          }
                          final cityRegencyDataSameAsKtpCityRegency =
                              cityRegencyList?.where((element) =>
                                  element.name?.trim().toLowerCase().contains(
                                      ktpCityRegency?.trim().toLowerCase() ??
                                          "") ??
                                  false);
                          if (cityRegencyDataSameAsKtpCityRegency?.length ==
                              1) {
                            cityRegencyValue =
                                cityRegencyDataSameAsKtpCityRegency
                                    ?.firstOrNull;
                            context.read<DistrictBloc>().add(
                                DistrictEvent.getDistrict(
                                    cityRegencyValue?.id ?? ""));
                          }
                        });
                      },
                      failed: (message) {
                        if (kDebugMode) {
                          print(message);
                        }
                      },
                    );
                  },
                  child: LabeledDropdownMenu(
                    labelText: "City/Regency",
                    color: ColorResource.blue900,
                    enabledColor: ColorResource.blue900,
                    enabled: isCityRegencyEnabled,
                    value: cityRegencyValue?.id,
                    items: cityRegencyList?.map<DropdownMenuItem<String>>(
                      (value) {
                        return DropdownMenuItem<String>(
                          value: value.id,
                          child: SizedBox(
                            width: 75.w,
                            child: Text(value.name ?? ""),
                          ),
                        );
                      },
                    ).toList(),
                    menuMaxHeight: 300,
                    errorText: ktpCityRegencyDropdownError,
                    onChanged: (value) {
                      setState(() {
                        districtValue = null;
                        districtList = null;
                        isDistrictEnabled = false;
                        cityRegencyValue = cityRegencyList
                            ?.where((e) => e.id == value)
                            .firstOrNull;
                        ktpCityRegencyDropdownError = null;
                      });
                      context
                          .read<DistrictBloc>()
                          .add(DistrictEvent.getDistrict(value ?? ""));
                    },
                  ),
                ),
                const SizedBox(height: 16),
                BlocListener<DistrictBloc, DistrictState>(
                  listener: (context, state) {
                    state.when(
                      initial: () {},
                      loading: () {},
                      success: (data) {
                        setState(() {
                          districtList = data.data?.data;
                          if (districtList?.isNotEmpty ?? false) {
                            isDistrictEnabled = true;
                          }
                          final districtDataSameAsKtpDistrict =
                              districtList?.where((element) =>
                                  element.name?.trim().toLowerCase().contains(
                                      widget.data?.district
                                              ?.trim()
                                              .toLowerCase() ??
                                          "") ??
                                  false);
                          if (districtDataSameAsKtpDistrict?.length == 1) {
                            districtValue =
                                districtDataSameAsKtpDistrict?.firstOrNull;
                          }
                        });
                      },
                      failed: (message) {
                        if (kDebugMode) {
                          print(message);
                        }
                      },
                    );
                  },
                  child: LabeledDropdownMenu(
                    labelText: "District",
                    color: ColorResource.blue900,
                    enabledColor: ColorResource.blue900,
                    enabled: isDistrictEnabled,
                    value: districtValue?.id,
                    items: districtList?.map<DropdownMenuItem<String>>(
                      (value) {
                        return DropdownMenuItem<String>(
                          value: value.id,
                          child: SizedBox(
                            width: 75.w,
                            child: Text(value.name ?? ""),
                          ),
                        );
                      },
                    ).toList(),
                    menuMaxHeight: 300,
                    errorText: ktpDistrictDropdownError,
                    onChanged: (value) {
                      setState(() {
                        districtValue = districtList
                            ?.where((e) => e.id == value)
                            .firstOrNull;
                        ktpDistrictDropdownError = null;
                      });
                    },
                  ),
                ),
              ] else ...[
                LabeledTextField(
                  controller: ktpProvinceController,
                  labelText: "Province",
                  color: ColorResource.blue900,
                  enabledColor: ColorResource.blue900,
                  errorText: ktpProvinceInputError,
                  onChanged: (value) {
                    setState(() => ktpProvinceInputError = null);
                  },
                ),
                const SizedBox(height: 16),
                LabeledTextField(
                  controller: ktpCityRegencyController,
                  labelText: "City/Regency",
                  color: ColorResource.blue900,
                  enabledColor: ColorResource.blue900,
                  errorText: ktpCityRegencyInputError,
                  onChanged: (value) {
                    setState(() => ktpCityRegencyInputError = null);
                  },
                ),
                const SizedBox(height: 16),
                LabeledTextField(
                  controller: ktpDistrictController,
                  labelText: "District",
                  color: ColorResource.blue900,
                  enabledColor: ColorResource.blue900,
                  errorText: ktpDistrictInputError,
                  onChanged: (value) {
                    setState(() => ktpDistrictInputError = null);
                  },
                ),
              ],
              const SizedBox(height: 16),
              LabeledTextField(
                controller: ktpAddressController,
                labelText: "Full Address",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                maxLines: 5,
                minLines: 3,
                errorText: ktpAddressError,
                onChanged: (value) => setState(() => ktpAddressError = null),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                    visualDensity: VisualDensity.compact,
                    splashRadius: 0,
                    value: isCurrentAddressMatch,
                    onChanged: (value) {
                      setState(() => isCurrentAddressMatch = value ?? false);
                    },
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "My current address matches my KTP address",
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  )
                ],
              ),
              Visibility(
                visible: !isCurrentAddressMatch,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 28),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.icAddress),
                        const SizedBox(width: 16),
                        Text(
                          "Current Address",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeightResource.semiBold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    LabeledTextField(
                      controller: currentCountryController,
                      labelText: "Country",
                      color: ColorResource.blue900,
                      enabledColor: ColorResource.blue900,
                      errorText: currentCountryError,
                      onChanged: (value) async {
                        await Future.delayed(const Duration(milliseconds: 500));
                        if (value.trim().toLowerCase() == "indonesia") {
                          setState(() {
                            currentDistrictValue = null;
                            currentDistrictList = null;
                            isCurrentDistrictEnabled = false;
                            currentCityRegencyValue = null;
                            currentCityRegencyList = null;
                            isCurrentCityRegencyEnabled = false;
                            currentProvinceValue = null;
                            currentProvinceList = null;
                            isCurrentProvinceEnabled = false;
                            isCurrentCountryIndonesia = true;
                          });
                          if (context.mounted) {
                            context.read<CurrentProvinceBloc>().add(
                                const CurrentProvinceEvent
                                    .getCurrentProvince());
                          }
                        } else {
                          setState(() => isCurrentCountryIndonesia = false);
                        }
                        if (currentCountryError != null) {
                          setState(() => currentCountryError = null);
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    if (isCurrentCountryIndonesia) ...[
                      BlocListener<CurrentProvinceBloc, CurrentProvinceState>(
                        listener: (context, state) {
                          state.when(
                            initial: () {},
                            loading: () {},
                            success: (data) {
                              setState(() {
                                currentProvinceList = data.data?.data;
                                if (currentProvinceList?.isNotEmpty ?? false) {
                                  isCurrentProvinceEnabled = true;
                                }
                              });
                            },
                            failed: (message) {
                              if (kDebugMode) {
                                print(message);
                              }
                            },
                          );
                        },
                        child: LabeledDropdownMenu(
                          labelText: "Province",
                          color: ColorResource.blue900,
                          enabledColor: ColorResource.blue900,
                          enabled: isCurrentProvinceEnabled,
                          value: currentProvinceValue?.id.toString(),
                          items: currentProvinceList
                              ?.map<DropdownMenuItem<String>>(
                            (value) {
                              return DropdownMenuItem<String>(
                                value: value.id,
                                child: SizedBox(
                                  width: 75.w,
                                  child: Text(value.name ?? ""),
                                ),
                              );
                            },
                          ).toList(),
                          menuMaxHeight: 300,
                          errorText: currentProvinceDropdownError,
                          onChanged: (value) {
                            setState(() {
                              currentDistrictValue = null;
                              currentDistrictList = null;
                              isCurrentDistrictEnabled = false;
                              currentCityRegencyValue = null;
                              currentCityRegencyList = null;
                              isCurrentCityRegencyEnabled = false;
                              currentProvinceValue = currentProvinceList
                                  ?.where((e) => e.id == value)
                                  .firstOrNull;
                              currentProvinceDropdownError = null;
                            });
                            context.read<CurrentCityRegencyBloc>().add(
                                CurrentCityRegencyEvent.getCurrentCityRegency(
                                    value ?? ""));
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      BlocListener<CurrentCityRegencyBloc,
                          CurrentCityRegencyState>(
                        listener: (context, state) {
                          state.when(
                            initial: () {},
                            loading: () {},
                            success: (data) {
                              setState(() {
                                currentCityRegencyList = data.data?.data;
                                if (currentCityRegencyList?.isNotEmpty ??
                                    false) {
                                  isCurrentCityRegencyEnabled = true;
                                }
                              });
                            },
                            failed: (message) {
                              if (kDebugMode) {
                                print(message);
                              }
                            },
                          );
                        },
                        child: LabeledDropdownMenu(
                          labelText: "City/Regency",
                          color: ColorResource.blue900,
                          enabledColor: ColorResource.blue900,
                          enabled: isCurrentCityRegencyEnabled,
                          value: currentCityRegencyValue?.id,
                          items: currentCityRegencyList
                              ?.map<DropdownMenuItem<String>>(
                            (value) {
                              return DropdownMenuItem<String>(
                                value: value.id,
                                child: SizedBox(
                                  width: 75.w,
                                  child: Text(value.name ?? ""),
                                ),
                              );
                            },
                          ).toList(),
                          menuMaxHeight: 300,
                          errorText: currentCityRegencyDropdownError,
                          onChanged: (value) {
                            setState(() {
                              currentDistrictValue = null;
                              currentDistrictList = null;
                              isCurrentDistrictEnabled = false;
                              currentCityRegencyValue = currentCityRegencyList
                                  ?.where((e) => e.id == value)
                                  .firstOrNull;
                              currentCityRegencyDropdownError = null;
                            });
                            context.read<CurrentDistrictBloc>().add(
                                CurrentDistrictEvent.getCurrentDistrict(
                                    value ?? ""));
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      BlocListener<CurrentDistrictBloc, CurrentDistrictState>(
                        listener: (context, state) {
                          state.when(
                            initial: () {},
                            loading: () {},
                            success: (data) {
                              setState(() {
                                currentDistrictList = data.data?.data;
                                if (currentDistrictList?.isNotEmpty ?? false) {
                                  isCurrentDistrictEnabled = true;
                                }
                              });
                            },
                            failed: (message) {
                              if (kDebugMode) {
                                print(message);
                              }
                            },
                          );
                        },
                        child: LabeledDropdownMenu(
                          labelText: "District",
                          color: ColorResource.blue900,
                          enabledColor: ColorResource.blue900,
                          enabled: isCurrentDistrictEnabled,
                          value: currentDistrictValue?.id,
                          items: currentDistrictList
                              ?.map<DropdownMenuItem<String>>(
                            (value) {
                              return DropdownMenuItem<String>(
                                value: value.id,
                                child: SizedBox(
                                  width: 75.w,
                                  child: Text(value.name ?? ""),
                                ),
                              );
                            },
                          ).toList(),
                          menuMaxHeight: 300,
                          errorText: currentDistrictDropdownError,
                          onChanged: (value) {
                            setState(() {
                              currentDistrictValue = currentDistrictList
                                  ?.where((e) => e.id == value)
                                  .firstOrNull;
                              currentDistrictDropdownError = null;
                            });
                          },
                        ),
                      ),
                    ] else ...[
                      LabeledTextField(
                        controller: currentProvinceController,
                        labelText: "Province",
                        color: ColorResource.blue900,
                        enabledColor: ColorResource.blue900,
                        errorText: currentProvinceInputError,
                        onChanged: (value) {
                          setState(() => currentProvinceInputError = null);
                        },
                      ),
                      const SizedBox(height: 16),
                      LabeledTextField(
                        controller: currentCityRegencyController,
                        labelText: "City/Regency",
                        color: ColorResource.blue900,
                        enabledColor: ColorResource.blue900,
                        errorText: currentCityRegencyInputError,
                        onChanged: (value) {
                          setState(() => currentCityRegencyInputError = null);
                        },
                      ),
                      const SizedBox(height: 16),
                      LabeledTextField(
                        controller: currentDistrictController,
                        labelText: "District",
                        color: ColorResource.blue900,
                        enabledColor: ColorResource.blue900,
                        errorText: currentDistrictInputError,
                        onChanged: (value) {
                          setState(() => currentDistrictInputError = null);
                        },
                      ),
                    ],
                    const SizedBox(height: 16),
                    LabeledTextField(
                      controller: currentAddressController,
                      labelText: "Full Address",
                      color: ColorResource.blue900,
                      enabledColor: ColorResource.blue900,
                      maxLines: 5,
                      minLines: 3,
                      errorText: currentAddressError,
                      onChanged: (value) {
                        setState(() => currentAddressError = null);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "Continue",
                  onPressed: () {
                    validateNik(nikController.text);
                    validateFullName(fullNameController.text);
                    validateGender(gender);
                    validatePlaceOfBirth(placeOfBirthController.text);
                    validateDateOfBirth(dateOfBirthController.text);
                    validateOccupation(occupationController.text);
                    validateNationality(nationalityController.text);
                    validateMaritalStatus(maritalStatusController.text);
                    validateReligion(religionController.text);
                    validateKtpCountry(ktpCountryController.text);
                    validateKtpProvince();
                    validateKtpCityRegency();
                    validateKtpDistrict();
                    validateKtpAddress(ktpAddressController.text);
                    if (!isCurrentAddressMatch) {
                      validateCurrentCountry(currentCountryController.text);
                      validateCurrentProvince();
                      validateCurrentCityRegency();
                      validateCurrentDistrict();
                      validateCurrentAddress(currentAddressController.text);
                    }
                    if (nikError == null &&
                        fullNameError == null &&
                        genderError == null &&
                        placeOfBirthError == null &&
                        dateOfBirthError == null &&
                        occupationError == null &&
                        nationalityError == null &&
                        maritalStatusError == null &&
                        religionError == null &&
                        ktpCountryError == null &&
                        ktpProvinceDropdownError == null &&
                        ktpProvinceInputError == null &&
                        ktpCityRegencyDropdownError == null &&
                        ktpCityRegencyInputError == null &&
                        ktpDistrictDropdownError == null &&
                        ktpDistrictInputError == null &&
                        ktpAddressError == null) {
                      if (!isCurrentAddressMatch) {
                        if (currentCountryError == null &&
                            currentProvinceDropdownError == null &&
                            currentProvinceInputError == null &&
                            currentCityRegencyDropdownError == null &&
                            currentCityRegencyInputError == null &&
                            currentDistrictDropdownError == null &&
                            currentDistrictInputError == null &&
                            currentAddressError == null) {
                          IdCardVerificationDataModel idCardData =
                              IdCardVerificationDataModel(
                            nik: nikController.text,
                            fullName: fullNameController.text,
                            gender: gender?.labelId ?? "",
                            placeOfBirth: placeOfBirthController.text,
                            dateOfBirth: dateOfBirthController.text,
                            occupation: occupationController.text,
                            nationality: nationalityController.text,
                            maritalStatus: maritalStatusController.text,
                            religion: religionController.text,
                            ktpCountry: ktpCountryController.text,
                            ktpProvince: isKtpCountryIndonesia
                                ? provinceValue?.name ?? ""
                                : ktpProvinceController.text,
                            ktpCityRegency: isKtpCountryIndonesia
                                ? cityRegencyValue?.name ?? ""
                                : ktpCityRegencyController.text,
                            ktpDistrict: isKtpCountryIndonesia
                                ? districtValue?.name ?? ""
                                : ktpDistrictController.text,
                            ktpAddress: ktpAddressController.text,
                            isCurrentAddressMatch:
                                isCurrentAddressMatch ? "Y" : "N",
                            currentCountry: currentCountryController.text,
                            currentProvince: isCurrentCountryIndonesia
                                ? currentProvinceValue?.name ?? ""
                                : currentProvinceController.text,
                            currentCityRegency: isCurrentCountryIndonesia
                                ? currentCityRegencyValue?.name ?? ""
                                : currentCityRegencyController.text,
                            currentDistrict: isCurrentCountryIndonesia
                                ? currentDistrictValue?.name ?? ""
                                : currentDistrictController.text,
                            currentAddress: currentAddressController.text,
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Step2CheckPage(
                                  idCardData: idCardData,
                                  idCardImage: widget.idCardImage,
                                );
                              },
                            ),
                          );
                        }
                      } else {
                        IdCardVerificationDataModel idCardData =
                            IdCardVerificationDataModel(
                          nik: nikController.text,
                          fullName: fullNameController.text,
                          gender: gender?.labelId ?? "",
                          placeOfBirth: placeOfBirthController.text,
                          dateOfBirth: dateOfBirthController.text,
                          occupation: occupationController.text,
                          nationality: nationalityController.text,
                          maritalStatus: maritalStatusController.text,
                          religion: religionController.text,
                          ktpCountry: ktpCountryController.text,
                          ktpProvince: isKtpCountryIndonesia
                              ? provinceValue?.name ?? ""
                              : ktpProvinceController.text,
                          ktpCityRegency: isKtpCountryIndonesia
                              ? cityRegencyValue?.name ?? ""
                              : ktpCityRegencyController.text,
                          ktpDistrict: isKtpCountryIndonesia
                              ? districtValue?.name ?? ""
                              : ktpDistrictController.text,
                          ktpAddress: ktpAddressController.text,
                          isCurrentAddressMatch:
                              isCurrentAddressMatch ? "Y" : "N",
                          currentCountry: ktpCountryController.text,
                          currentProvince: isKtpCountryIndonesia
                              ? provinceValue?.name ?? ""
                              : ktpProvinceController.text,
                          currentCityRegency: isKtpCountryIndonesia
                              ? cityRegencyValue?.name ?? ""
                              : ktpCityRegencyController.text,
                          currentDistrict: isKtpCountryIndonesia
                              ? districtValue?.name ?? ""
                              : ktpDistrictController.text,
                          currentAddress: ktpAddressController.text,
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Step2CheckPage(
                                idCardData: idCardData,
                                idCardImage: widget.idCardImage,
                              );
                            },
                          ),
                        );
                      }
                    }
                  },
                ),
              ),
              const SizedBox(height: 40),
              Center(child: Assets.icons.icLogo.image(height: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
