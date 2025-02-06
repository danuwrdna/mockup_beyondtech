import 'package:bpay_mobile/services/models/remittance/get_country_list_response_model.dart';
import 'package:bpay_mobile/services/models/remittance/get_service_options_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/bank_details/views/remittance_bank_details_page.dart';
import 'package:bpay_mobile/src/transfer_remittance/destination/bloc/country_list/remittance_country_list_bloc.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/transfer_remittance/destination/bloc/exchange_rate/remittance_exchange_rate_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/destination/bloc/service_options/remittance_service_options_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/destination/views/service_option_item_widget.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class RemittanceDestinationPage extends StatefulWidget {
  const RemittanceDestinationPage({super.key});

  @override
  State<RemittanceDestinationPage> createState() =>
      _RemittanceDestinationPageState();
}

class _RemittanceDestinationPageState extends State<RemittanceDestinationPage> {
  List<GetCountryListDataItem> countries = [];
  GetCountryListDataItem? selectedCountry;
  num? exchangeRate;
  List<RemittanceServiceOptionItem> serviceOptions = [];
  RemittanceServiceOptionItem? selectedService;
  Map<String, dynamic>? selectedServiceJson;
  String? destinationCountryCode;

  TextEditingController amountInLocalController = TextEditingController();
  TextEditingController amountInForeignController = TextEditingController();

  bool isLocalPrimaryCurrency = true; // Flag to track the primary currency
  num totalPrice = 0;

  // @override
  // void initState() {
  //   context
  //       .read<RemittanceCountryListBloc>()
  //       .add(const RemittanceCountryListEvent.getCountryList());
  //   super.initState();
  // }

  void swapCurrencies() {
    setState(() {
      isLocalPrimaryCurrency = !isLocalPrimaryCurrency;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: ColorResource.remittance,
        toolbarHeight: 64,
        title: Text(
          "International Transfer",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
            color: ColorResource.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorResource.white,
          ),
        ),
        surfaceTintColor: Colors.transparent,
      ),
      // body: MultiBlocListener(
      //   listeners: [
      //     BlocListener<RemittanceCountryListBloc, RemittanceCountryListState>(
      //       listener: (context, state) {
      //         state.when(
      //           initial: () {},
      //           loading: () {},
      //           success: (data) {
      //             setState(() {
      //               countries.clear();
      //               countries.addAll(data.data ?? []);
      //             });
      //           },
      //           failed: (message) {
      //             if (kDebugMode) print(message);
      //             showSnackBar(
      //               context,
      //               "An unexpected error occurred. Please contact our support.",
      //             );
      //           },
      //         );
      //       },
      //     ),
      //     BlocListener<RemittanceServiceOptionsBloc,
      //         RemittanceServiceOptionsState>(
      //       listener: (context, state) {
      //         state.when(
      //           initial: () {},
      //           loading: () {},
      //           success: (data) {
      //             setState(() {
      //               serviceOptions.clear();
      //               serviceOptions.addAll(data.data?.serviceOptions ?? []);

      //               if (selectedService != null) {
      //                 // Cari item dengan service_option_code yang sesuai
      //                 selectedService = serviceOptions.firstWhere(
      //                   (option) =>
      //                       option.serviceOptionCode ==
      //                       selectedService!.serviceOptionCode,
      //                   orElse: () => serviceOptions[0],
      //                   // Jika tidak ditemukan, pilih yang pertama sebagai default
      //                 );
      //               } else {
      //                 selectedService = serviceOptions[0];
      //               }
      //               destinationCountryCode = data.data?.destinationCountryCode;
      //               selectedServiceJson = selectedService!.toJson();
      //               exchangeRate = null;
      //             });
      //             context
      //                 .read<RemittanceExchangeRateBloc>()
      //                 .add(RemittanceExchangeRateEvent.getExchangeRate(
      //                   "IND",
      //                   "IDR",
      //                   selectedCountry?.countryCodeIso3 ?? "",
      //                   selectedCountry?.currencyCode ?? "",
      //                   selectedService?.serviceOptionCode ?? "",
      //                 ));
      //           },
      //           failed: (message) {
      //             if (kDebugMode) print(message);
      //             showSnackBar(
      //               context,
      //               "An unexpected error occurred. Please contact our support.",
      //             );
      //           },
      //         );
      //       },
      //     ),
      //     BlocListener<RemittanceExchangeRateBloc, RemittanceExchangeRateState>(
      //       listener: (context, state) {
      //         state.when(
      //           initial: () {},
      //           loading: () {},
      //           success: (data) {
      //             setState(() {
      //               exchangeRate = data.data?.fxRate;
      //               if (amountInLocalController.text.isEmpty) {
      //                 amountInForeignController.text = "";
      //               } else {
      //                 num local = int.tryParse(
      //                       amountInLocalController.text
      //                           .replaceAll(RegExp(r'[^0-9]'), ''),
      //                     ) ??
      //                     0;

      //                 if (selectedCountry != null) {
      //                   amountInForeignController.text = convertToCurrency(
      //                     (local / (exchangeRate ?? 0).toDouble()),
      //                     2,
      //                   );
      //                 }
      //               }
      //             });
      //           },
      //           failed: (message) {
      //             if (kDebugMode) print(message);
      //             showSnackBar(
      //               context,
      //               "An unexpected error occurred. Please contact our support.",
      //             );
      //           },
      //         );
      //       },
      //     ),
      //   ],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Which Country Are You Transferring To?",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 24),
              CommonShadowedContainer(
                backgroundColor: ColorResource.white,
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 16,
                    ),
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  items: countries
                      .map<DropdownMenuItem<GetCountryListDataItem>>(
                        (country) => DropdownMenuItem(
                          value: country,
                          child: Row(
                            children: [
                              CountryFlag.fromCountryCode(
                                country.countryCodeIso2 ?? "",
                                height: 16,
                                width: 24,
                              ),
                              const SizedBox(width: 12),
                              Text(country.countryName ?? ""),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                  hint: const Text("Select a Country"),
                  onChanged: (value) {
                    setState(() {
                      selectedCountry = value;
                      serviceOptions.clear();
                      selectedService = null;
                      exchangeRate = null;
                    });
                    // context
                    // .read<RemittanceServiceOptionsBloc>()
                    // .add(RemittanceServiceOptionsEvent.getServiceOptions(
                    //   selectedCountry?.countryCodeIso3 ?? "",
                    // ));
                  },
                  value: selectedCountry,
                ),
              ),
              const SizedBox(height: 12),
              CommonOutlinedContainer(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                borderColor: Colors.transparent,
                backgroundColor: ColorResource.mistyRose,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exchange Rate ${selectedCountry?.currencyCode == null ? "-" : "1 ${selectedCountry?.currencyCode}"}",
                    ),
                    Text(convertToIdr(exchangeRate ?? 0, 2))
                  ],
                ),
              ),
              const SizedBox(height: 32),
              if (serviceOptions.length > 1) ...[
                Text(
                  "Choose Service",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 16),
                CommonShadowedContainer(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 4,
                  ),
                  backgroundColor: ColorResource.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var service in serviceOptions) ...[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0), // Adjust spacing between tabs
                            child: ServiceOptionItem(
                              label: service.serviceOptionName ?? "",
                              selected: selectedService == service,
                              onTap: () {
                                setState(() {
                                  selectedService = service;
                                  exchangeRate = null;
                                });
                                // context
                                //     .read<RemittanceExchangeRateBloc>()
                                //     .add(
                                //       RemittanceExchangeRateEvent
                                //           .getExchangeRate(
                                //         "IND",
                                //         "IDR",
                                //         selectedCountry?.countryCodeIso3 ??
                                //             "",
                                //         selectedCountry?.currencyCode ?? "",
                                //         selectedService?.serviceOptionCode ??
                                //             "",
                                //       ),
                                //     );

                                // context
                                //     .read<RemittanceServiceOptionsBloc>()
                                //     .add(RemittanceServiceOptionsEvent
                                //         .getServiceOptions(
                                //       selectedCountry?.countryCodeIso3 ?? "",
                                //     ));
                              },
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
              Text(
                "Transfer Amount",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
              const SizedBox(height: 20),
              CommonShadowedContainer(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                backgroundColor: ColorResource.white,
                radius: 16,
                child: Column(
                  children: [
                    LabeledTextField(
                      controller: isLocalPrimaryCurrency == true
                          ? amountInLocalController
                          : amountInForeignController,
                      hintText:
                          "Input Amount in ${isLocalPrimaryCurrency == false ? selectedCountry?.currencyCode ?? "-" : "IDR"}",
                      suffixIcon: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 12,
                        ),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: ColorResource.grey400,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CountryFlag.fromCountryCode(
                              isLocalPrimaryCurrency == false
                                  ? selectedCountry?.countryCodeIso2 ?? ""
                                  : "ID",
                              height: 16,
                              width: 24,
                              shape: const RoundedRectangle(3),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              isLocalPrimaryCurrency == false
                                  ? selectedCountry?.currencyCode ?? ""
                                  : "IDR",
                              style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeightResource.semiBold,
                                fontStyle: FontStyle.normal,
                              ),
                            )
                          ],
                        ),
                      ),
                      inputFormatters: [
                        CurrencyInputFormatter(
                          thousandSeparator: ThousandSeparator.Period,
                          mantissaLength: 0,
                        ),
                      ],
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        num local = int.tryParse(
                              value.replaceAll(RegExp(r'[^0-9]'), ''),
                            ) ??
                            0;
                        setState(() {
                          if (value.isEmpty) {
                            amountInForeignController.text = "";
                          } else {
                            if (selectedCountry != null) {
                              if (isLocalPrimaryCurrency) {
                                amountInForeignController.text =
                                    convertToCurrency(
                                  (local / (exchangeRate ?? 0).toDouble()),
                                  2,
                                );

                                totalPrice = local;
                              } else {
                                amountInLocalController.text =
                                    convertToCurrency(
                                  (local * (exchangeRate ?? 0).toDouble()),
                                  2,
                                );

                                totalPrice =
                                    local * (exchangeRate ?? 0).toDouble();
                              }
                            }
                          }
                        });
                      },
                    ),
                    const SizedBox(height: 12),
                    InkWell(
                      onTap: selectedCountry == null
                          ? null
                          : () {
                              swapCurrencies();
                            },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedCountry == null
                              ? ColorResource.grey300
                              : ColorResource.remittance,
                        ),
                        child: Icon(
                          Icons.swap_vert_rounded,
                          color: selectedCountry == null
                              ? ColorResource.grey500
                              : ColorResource.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    LabeledTextField(
                      controller: isLocalPrimaryCurrency == false
                          ? amountInLocalController
                          : amountInForeignController,
                      hintText: selectedCountry != null
                          ? "Amount in ${isLocalPrimaryCurrency == true ? selectedCountry?.currencyCode ?? "-" : "IDR"}"
                          : "Please select a country",
                      suffixIcon: selectedCountry != null
                          ? Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 12,
                              ),
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: ColorResource.grey400,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CountryFlag.fromCountryCode(
                                    isLocalPrimaryCurrency == true
                                        ? selectedCountry?.countryCodeIso2 ?? ""
                                        : "ID",
                                    height: 16,
                                    width: 24,
                                    shape: const RoundedRectangle(3),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    isLocalPrimaryCurrency == true
                                        ? selectedCountry?.currencyCode ?? ""
                                        : "IDR",
                                    style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : null,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                      enabled: false,
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 16),
              // Row(
              //   children: [
              //     SvgPicture.asset(Assets.icons.icMoney),
              //     const SizedBox(width: 16),
              //     Expanded(
              //       child: Text(
              //         "Transfer Fee",
              //         style: TextStyle(fontSize: 12.sp),
              //       ),
              //     ),
              //     Text(
              //       convertToIdr(45000, 0),
              //       style: TextStyle(
              //         color: ColorResource.black100.withOpacity(0.4),
              //         fontSize: 12.sp,
              //         decoration: TextDecoration.lineThrough,
              //       ),
              //     ),
              //     const SizedBox(width: 8),
              //     Text(
              //       "Free",
              //       style: TextStyle(
              //         fontSize: 12.sp,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 12),
              // Align(
              //   alignment: AlignmentDirectional.centerEnd,
              //   child: Container(
              //     padding:
              //         const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              //     decoration: BoxDecoration(
              //         color: ColorResource.green300.withOpacity(0.6),
              //         borderRadius: BorderRadius.circular(16)),
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         SvgPicture.asset(Assets.icons.icCoinFilled),
              //         const SizedBox(width: 6),
              //         Text(
              //           "congrats! You get free on your first foreign transaction"
              //               .capitalizeEach(),
              //           style: const TextStyle(
              //             fontSize: 8,
              //             fontStyle: FontStyle.italic,
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 16),
              // Divider(height: 1, color: ColorResource.black.withOpacity(0.2)),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        // padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        decoration: BoxDecoration(
          color: ColorResource.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: ColorResource.black.withOpacity(0.13),
              offset: const Offset(0, -2),
            )
          ],
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              color: ColorResource.remittance.withOpacity(0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonOutlinedContainer(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 9,
                    ),
                    borderColor: ColorResource.remittance,
                    radius: 8,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.icons.icCoupon,
                          colorFilter: const ColorFilter.mode(
                            ColorResource.remittance,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          "Use Promo",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeightResource.semiBold,
                            color: ColorResource.remittance,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: ColorResource.remittance,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Price", style: TextStyle(fontSize: 11.sp)),
                      const SizedBox(height: 4),
                      Text(
                        totalPrice <= 0 ? "-" : convertToIdr(totalPrice, 0),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.w,
                    child: AppFilledButton(
                      text: "Continue",
                      backgroundColor: ColorResource.remittance,
                      onPressed: selectedCountry != null &&
                              selectedService != null &&
                              amountInForeignController.text.isNotEmpty &&
                              amountInLocalController.text.isNotEmpty
                          ? () {
                              final amountInString =
                                  amountInLocalController.text;
                              int amount = int.parse(amountInString
                                  .split(',')[0]
                                  .replaceAll('.', ''));
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return RemittanceBankDetailsPage(
                                      selectedService: selectedServiceJson,
                                      destinationCountryCode:
                                          destinationCountryCode!,
                                      amount: amount,
                                    );
                                  },
                                ),
                              );
                            }
                          : null,
                      radius: 16,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
