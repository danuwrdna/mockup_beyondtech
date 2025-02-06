import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/city_regency_list_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/district_list_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/gender_enum.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/province_list_response_model.dart';
import 'package:bpay_mobile/src/auth_verification/passport/form/bloc/city_regency/passport_city_regency_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/passport/form/bloc/district/passport_district_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/passport/form/bloc/province/passport_province_bloc.dart';
import 'package:bpay_mobile/src/auth_verification/passport/summary/models/passport_verification_data_model.dart';
import 'package:bpay_mobile/src/auth_verification/passport/summary/views/passport_verification_summary_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/labeled_dropdown_menu.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/step_progress_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class PassportVerificationFormPage extends StatefulWidget {
  const PassportVerificationFormPage({super.key});

  @override
  State<PassportVerificationFormPage> createState() =>
      _PassportVerificationFormPageState();
}

class _PassportVerificationFormPageState
    extends State<PassportVerificationFormPage> {
  Gender? gender;
  TextEditingController passportTypeController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController();
  TextEditingController passportNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController placeOfBirthController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController dateOfIssueController = TextEditingController();
  TextEditingController dateOfExpiryController = TextEditingController();
  TextEditingController placeOfIssueController = TextEditingController();

  TextEditingController currentCountryController = TextEditingController();
  TextEditingController currentProvinceController = TextEditingController();
  TextEditingController currentCityRegencyController = TextEditingController();
  TextEditingController currentDistrictController = TextEditingController();
  TextEditingController currentAddressController = TextEditingController();
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

  String? passportTypeError;
  String? countryCodeError;
  String? passportNumberError;
  String? fullNameError;
  String? genderError;
  String? nationalityError;
  String? placeOfBirthError;
  String? dateOfBirthError;
  String? dateOfIssueError;
  String? dateOfExpiryError;
  String? placeOfIssueError;
  String? currentCountryError;
  String? currentProvinceError;
  String? currentCityRegencyError;
  String? currentDistrictError;
  String? currentAddressError;

  void validatePassportType(String value) {
    if (value.isEmpty) {
      setState(() => passportTypeError = 'Passport type can not be empty');
    } else {
      setState(() => passportTypeError = null);
    }
  }

  void validateCountryCode(String value) {
    if (value.isEmpty) {
      setState(() => countryCodeError = 'Country code can not be empty');
    } else {
      setState(() => countryCodeError = null);
    }
  }

  void validatePassportNumber(String value) {
    if (value.isEmpty) {
      setState(() => passportNumberError = 'Passport number can not be empty');
    } else {
      setState(() => passportNumberError = null);
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

  void validateNationality(String value) {
    if (value.isEmpty) {
      setState(() => nationalityError = 'Nationality can not be empty');
    } else {
      setState(() => nationalityError = null);
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

  void validateDateOfIssue(String value) {
    if (value.isEmpty) {
      setState(() => dateOfIssueError = 'Date of issue can not be empty');
    } else {
      setState(() => dateOfIssueError = null);
    }
  }

  void validateDateOfExpiry(String value) {
    if (value.isEmpty) {
      setState(() => dateOfExpiryError = 'Date of expiry can not be empty');
    } else {
      setState(() => dateOfExpiryError = null);
    }
  }

  void validatePlaceOfIssue(String value) {
    if (value.isEmpty) {
      setState(() => placeOfIssueError = 'Place of issue can not be empty');
    } else {
      setState(() => placeOfIssueError = null);
    }
  }

  void validateCurrentCountry(String value) {
    if (value.isEmpty) {
      setState(() => currentCountryError = 'Country can not be empty');
    } else {
      setState(() => currentCountryError = null);
    }
  }

  void validateCurrentProvince() {
    if (isCurrentCountryIndonesia && currentProvinceValue == null ||
        !isCurrentCountryIndonesia && currentProvinceController.text.isEmpty) {
      setState(() => currentProvinceError = "Province can not be empty");
    } else {
      setState(() => currentProvinceError = null);
    }
  }

  void validateCurrentCityRegency() {
    if (isCurrentCountryIndonesia && currentCityRegencyValue == null ||
        !isCurrentCountryIndonesia &&
            currentCityRegencyController.text.isEmpty) {
      setState(() => currentCityRegencyError = "City/regency can not be empty");
    } else {
      setState(() => currentCityRegencyError = null);
    }
  }

  void validateCurrentDistrict() {
    if (isCurrentCountryIndonesia && currentDistrictValue == null ||
        !isCurrentCountryIndonesia && currentDistrictController.text.isEmpty) {
      setState(() => currentDistrictError = "District can not be empty");
    } else {
      setState(() => currentDistrictError = null);
    }
  }

  void validateCurrentAddress(String value) {
    if (value.isEmpty) {
      setState(() => currentAddressError = 'Current address can not be empty');
    } else {
      setState(() => currentAddressError = null);
    }
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
            children: [
              const StepProgressWidget(
                stepLabel: "Personal Data Form",
                currentStep: 1,
                totalStep: 2,
              ),
              const SizedBox(height: 24),
              Text(
                "Please fill in your personal data completely.",
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
              LabeledTextField(
                controller: passportTypeController,
                labelText: "Passport Type",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: passportTypeError,
                onChanged: (value) => setState(() => passportTypeError = null),
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: countryCodeController,
                labelText: "Country Code",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: countryCodeError,
                onChanged: (value) => setState(() => countryCodeError = null),
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: passportNumberController,
                labelText: "Passport Number",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: passportNumberError,
                onChanged: (value) {
                  setState(() => passportNumberError = null);
                },
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
                controller: nationalityController,
                labelText: "Nationality",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: nationalityError,
                onChanged: (value) => setState(() => nationalityError = null),
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
                onTap: () async {
                  final DateTime? date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1950),
                    lastDate: DateTime.now(),
                    initialDatePickerMode: dateOfIssueController.text.isNotEmpty
                        ? DatePickerMode.day
                        : DatePickerMode.year,
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    currentDate: DateFormat("dd-MM-yyyy")
                        .tryParse(dateOfIssueController.text),
                    initialDate: DateFormat("dd-MM-yyyy")
                        .tryParse(dateOfIssueController.text),
                  );
                  if (date != null) {
                    dateOfIssueController.text =
                        DateFormat("dd-MM-yyyy").format(date);
                    setState(() => dateOfIssueError = null);
                  }
                },
                readOnly: true,
                controller: dateOfIssueController,
                labelText: "Date of Issue",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                suffixIcon: const Icon(Icons.date_range_rounded),
                errorText: dateOfIssueError,
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                onTap: () async {
                  final DateTime? date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1950),
                    lastDate: DateTime.now().add(const Duration(days: 365 * 10)),
                    initialDatePickerMode:
                        dateOfExpiryController.text.isNotEmpty
                            ? DatePickerMode.day
                            : DatePickerMode.year,
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    currentDate: DateFormat("dd-MM-yyyy")
                        .tryParse(dateOfExpiryController.text),
                    initialDate: DateFormat("dd-MM-yyyy")
                        .tryParse(dateOfExpiryController.text),
                  );
                  if (date != null) {
                    dateOfExpiryController.text =
                        DateFormat("dd-MM-yyyy").format(date);
                    setState(() => dateOfExpiryError = null);
                  }
                },
                readOnly: true,
                controller: dateOfExpiryController,
                labelText: "Date of Expiry",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                suffixIcon: const Icon(Icons.date_range_rounded),
                errorText: dateOfExpiryError,
              ),
              const SizedBox(height: 16),
              LabeledTextField(
                controller: placeOfIssueController,
                labelText: "Place of Issue",
                color: ColorResource.blue900,
                enabledColor: ColorResource.blue900,
                errorText: placeOfIssueError,
                onChanged: (value) => setState(() => placeOfIssueError = null),
              ),
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
                      context
                          .read<PassportProvinceBloc>()
                          .add(const PassportProvinceEvent.getProvince());
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
                BlocListener<PassportProvinceBloc, PassportProvinceState>(
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
                    items: currentProvinceList?.map<DropdownMenuItem<String>>(
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
                    errorText: currentProvinceError,
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
                        currentProvinceError = null;
                      });
                      context.read<PassportCityRegencyBloc>().add(
                          PassportCityRegencyEvent.getCityRegency(value ?? ""));
                    },
                  ),
                ),
                const SizedBox(height: 16),
                BlocListener<PassportCityRegencyBloc, PassportCityRegencyState>(
                  listener: (context, state) {
                    state.when(
                      initial: () {},
                      loading: () {},
                      success: (data) {
                        setState(() {
                          currentCityRegencyList = data.data?.data;
                          if (currentCityRegencyList?.isNotEmpty ?? false) {
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
                    items:
                        currentCityRegencyList?.map<DropdownMenuItem<String>>(
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
                    errorText: currentCityRegencyError,
                    onChanged: (value) {
                      setState(() {
                        currentDistrictValue = null;
                        currentDistrictList = null;
                        isCurrentDistrictEnabled = false;
                        currentCityRegencyValue = currentCityRegencyList
                            ?.where((e) => e.id == value)
                            .firstOrNull;
                        currentCityRegencyError = null;
                      });
                      context
                          .read<PassportDistrictBloc>()
                          .add(PassportDistrictEvent.getDistrict(value ?? ""));
                    },
                  ),
                ),
                const SizedBox(height: 16),
                BlocListener<PassportDistrictBloc, PassportDistrictState>(
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
                    items: currentDistrictList?.map<DropdownMenuItem<String>>(
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
                    errorText: currentDistrictError,
                    onChanged: (value) {
                      setState(() {
                        currentDistrictValue = currentDistrictList
                            ?.where((e) => e.id == value)
                            .firstOrNull;
                        currentDistrictError = null;
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
                  errorText: currentProvinceError,
                  onChanged: (value) {
                    setState(() => currentProvinceError = null);
                  },
                ),
                const SizedBox(height: 16),
                LabeledTextField(
                  controller: currentCityRegencyController,
                  labelText: "City/Regency",
                  color: ColorResource.blue900,
                  enabledColor: ColorResource.blue900,
                  errorText: currentCityRegencyError,
                  onChanged: (value) {
                    setState(() => currentCityRegencyError = null);
                  },
                ),
                const SizedBox(height: 16),
                LabeledTextField(
                  controller: currentDistrictController,
                  labelText: "District",
                  color: ColorResource.blue900,
                  enabledColor: ColorResource.blue900,
                  errorText: currentDistrictError,
                  onChanged: (value) {
                    setState(() => currentDistrictError = null);
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
              const SizedBox(height: 36),
              SizedBox(
                width: 100.w,
                child: AppFilledButton(
                  text: "Continue",
                  onPressed: () {
                    validatePassportType(passportTypeController.text);
                    validateCountryCode(countryCodeController.text);
                    validatePassportNumber(passportNumberController.text);
                    validateFullName(fullNameController.text);
                    validateGender(gender);
                    validateNationality(nationalityController.text);
                    validatePlaceOfBirth(placeOfBirthController.text);
                    validateDateOfBirth(dateOfBirthController.text);
                    validateDateOfIssue(dateOfIssueController.text);
                    validateDateOfExpiry(dateOfExpiryController.text);
                    validatePlaceOfIssue(placeOfIssueController.text);
                    validateCurrentCountry(currentCountryController.text);
                    validateCurrentProvince();
                    validateCurrentCityRegency();
                    validateCurrentDistrict();
                    validateCurrentAddress(currentAddressController.text);
                    if (passportTypeError == null &&
                        countryCodeError == null &&
                        passportNumberError == null &&
                        fullNameError == null &&
                        genderError == null &&
                        nationalityError == null &&
                        placeOfBirthError == null &&
                        dateOfBirthError == null &&
                        dateOfIssueError == null &&
                        dateOfExpiryError == null &&
                        placeOfIssueError == null &&
                        currentCountryError == null &&
                        currentProvinceError == null &&
                        currentCityRegencyError == null &&
                        currentDistrictError == null &&
                        currentAddressError == null) {
                      PassportVerificationDataModel passportData =
                          PassportVerificationDataModel(
                        passportType: passportTypeController.text,
                        countryCode: countryCodeController.text,
                        passportNumber: passportNumberController.text,
                        fullName: fullNameController.text,
                        gender: gender?.labelId ?? "",
                        nationality: nationalityController.text,
                        placeOfBirth: placeOfBirthController.text,
                        dateOfBirth: dateOfBirthController.text,
                        dateOfIssue: dateOfIssueController.text,
                        dateOfExpiry: dateOfExpiryController.text,
                        placeOfIssue: placeOfIssueController.text,
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
                          builder: (context) => PassportVerificationSummaryPage(
                            passportData: passportData,
                          ),
                        ),
                      );
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
