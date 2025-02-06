import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/bloc/detail/remittance_detail_bloc.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/widgets/remittance_summary_bottom_sheet.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/bloc/payment_method/remittance_payment_method_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class RemittancePaymentPage extends StatefulWidget {
  const RemittancePaymentPage({
    super.key,
    required this.fieldsControllers,
    required this.selectedService,
    required this.destinationCountryCode,
    required this.amount,
    required this.purposeOfTransaction,
    required this.sourceOfFunds,
  });

  final Map<String, TextEditingController>? fieldsControllers;
  final Map<String, dynamic>? selectedService;
  final String? destinationCountryCode;
  final int amount;
  final String purposeOfTransaction;
  final String sourceOfFunds;

  @override
  State<RemittancePaymentPage> createState() => _RemittancePaymentPageState();
}

class _RemittancePaymentPageState extends State<RemittancePaymentPage> {
  TextEditingController filterController = TextEditingController();
  List<PaymentMethodItem> paymentMethodList = [];
  List<PaymentMethodItem> filteredPaymentMethodList = [];
  PaymentMethodItem? paymentMethod;
  bool showMoreBankTransfer = false;
  bool showMoreVirtualAccount = false;
  late CountryDetailModel senderCountryDetail;
  late CountryDetailModel receiverCountryDetail;

  static const senderCountryCodeIso3 = "IDN";

  @override
  void initState() {
    context
        .read<RemittancePaymentMethodBloc>()
        .add(RemittancePaymentMethodEvent.getPaymentList(widget.amount));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "choose payment method".capitalizeEach(),
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
      body: BlocConsumer<RemittancePaymentMethodBloc,
          RemittancePaymentMethodState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (data) {
              paymentMethodList
                  .addAll(data.data.where((element) => element.isActive));
              filteredPaymentMethodList.addAll(paymentMethodList);
            },
            failed: (message) {
              Navigator.pop(context);
              if (kDebugMode) {
                print(message);
              }
              showSnackBar(context, message);
            },
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () {
              return const SizedBox();
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            success: (data) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabeledTextField(
                        controller: filterController,
                        enabledColor: ColorResource.grey500,
                        color: ColorResource.grey500,
                        contentPadding: const EdgeInsets.all(8),
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          color: ColorResource.grey300,
                        ),
                        hintText: "Search Bank or Other Transfer Methods",
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontStyle: FontStyle.italic,
                          color: ColorResource.grey300,
                        ),
                        style: TextStyle(fontSize: 12.sp),
                        onChanged: (value) {
                          setState(() {
                            if (value.isNotEmpty) {
                              filteredPaymentMethodList.clear();
                              filteredPaymentMethodList.addAll(
                                paymentMethodList.where(
                                  (e) =>
                                      (e.paymentName)
                                          .toLowerCase()
                                          .contains(value.toLowerCase()) ||
                                      (e.paymentGroup)
                                          .toLowerCase()
                                          .contains(value.toLowerCase()),
                                ),
                              );
                            } else {
                              filteredPaymentMethodList.clear();
                              filteredPaymentMethodList
                                  .addAll(paymentMethodList);
                            }
                          });
                        },
                      ),
                      if (filteredPaymentMethodList
                          .where((e) =>
                              e.paymentGroup == PaymentMethod.balance.label)
                          .isNotEmpty) ...[
                        const SizedBox(height: 28),
                        InkWell(
                          onTap: () {
                            setState(() {
                              paymentMethod = filteredPaymentMethodList.where(
                                (e) {
                                  return e.paymentGroup ==
                                      PaymentMethod.balance.label;
                                },
                              ).firstOrNull;
                            });
                          },
                          child: CommonOutlinedContainer(
                            padding: const EdgeInsets.all(16),
                            borderColor: ColorResource.grey500,
                            child: Row(
                              children: [
                                Assets.icons.icWalletFilled.image(
                                  scale: 1.5,
                                  color: ColorResource.remittance,
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Your Balance",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: ColorResource.remittance,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        convertToIdr(
                                          filteredPaymentMethodList
                                                  .where(
                                                    (e) =>
                                                        e.paymentGroup ==
                                                        PaymentMethod
                                                            .balance.label,
                                                  )
                                                  .firstOrNull
                                                  ?.userBalance ??
                                              0,
                                          0,
                                        ),
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                          color: ColorResource.remittance,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Radio(
                                  value: filteredPaymentMethodList
                                      .where(
                                        (e) =>
                                            e.paymentGroup ==
                                            PaymentMethod.balance.label,
                                      )
                                      .firstOrNull,
                                  groupValue: paymentMethod,
                                  onChanged: (value) {
                                    setState(() {
                                      paymentMethod = value;
                                    });
                                  },
                                  activeColor: ColorResource.remittance,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                      if (filteredPaymentMethodList.where(
                        (e) {
                          return e.paymentGroup ==
                              PaymentMethod.bankTransfer.label;
                        },
                      ).isNotEmpty) ...[
                        const SizedBox(height: 28),
                        Text(
                          "Bank Transfer",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeightResource.semiBold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: showMoreBankTransfer
                              ? filteredPaymentMethodList
                                  .where(
                                    (e) =>
                                        e.paymentGroup ==
                                        PaymentMethod.bankTransfer.label,
                                  )
                                  .length
                              : filteredPaymentMethodList
                                          .where(
                                            (e) =>
                                                e.paymentGroup ==
                                                PaymentMethod
                                                    .bankTransfer.label,
                                          )
                                          .length <
                                      3
                                  ? filteredPaymentMethodList
                                      .where(
                                        (e) =>
                                            e.paymentGroup ==
                                            PaymentMethod.bankTransfer.label,
                                      )
                                      .length
                                  : 3,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      paymentMethod = filteredPaymentMethodList
                                          .where(
                                            (e) =>
                                                e.paymentGroup ==
                                                PaymentMethod
                                                    .bankTransfer.label,
                                          )
                                          .toList()[index];
                                    });
                                  },
                                  child: CommonOutlinedContainer(
                                    borderColor: ColorResource.grey500,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CachedNetworkImage(
                                            imageUrl: filteredPaymentMethodList
                                                .where(
                                                  (e) =>
                                                      e.paymentGroup ==
                                                      PaymentMethod
                                                          .bankTransfer.label,
                                                )
                                                .toList()[index]
                                                .iconUrl),
                                        Radio(
                                          value: filteredPaymentMethodList
                                              .where(
                                                (e) =>
                                                    e.paymentGroup ==
                                                    PaymentMethod
                                                        .bankTransfer.label,
                                              )
                                              .toList()[index],
                                          groupValue: paymentMethod,
                                          onChanged: (value) {
                                            setState(
                                                () => paymentMethod = value);
                                          },
                                          activeColor: ColorResource.remittance,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: index <
                                      (showMoreBankTransfer
                                              ? filteredPaymentMethodList
                                                  .where(
                                                    (e) =>
                                                        e.paymentGroup ==
                                                        PaymentMethod
                                                            .bankTransfer.label,
                                                  )
                                                  .length
                                              : 3) -
                                          1,
                                  child: const SizedBox(height: 12),
                                )
                              ],
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                showMoreBankTransfer = !showMoreBankTransfer;
                              });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                    showMoreBankTransfer ? "- Less" : "+ More"),
                                const SizedBox(width: 8),
                                Icon(showMoreBankTransfer
                                    ? Icons.keyboard_arrow_up_outlined
                                    : Icons.keyboard_arrow_down_outlined),
                              ],
                            ),
                          ),
                        ),
                      ],
                      if (filteredPaymentMethodList
                          .where(
                            (e) =>
                                e.paymentGroup ==
                                PaymentMethod.virtualAccount.label,
                          )
                          .isNotEmpty) ...[
                        const SizedBox(height: 28),
                        Text(
                          "Virtual Account",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeightResource.semiBold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: showMoreVirtualAccount
                              ? filteredPaymentMethodList
                                  .where(
                                    (e) =>
                                        e.paymentGroup ==
                                        PaymentMethod.virtualAccount.label,
                                  )
                                  .length
                              : filteredPaymentMethodList
                                          .where(
                                            (e) =>
                                                e.paymentGroup ==
                                                PaymentMethod
                                                    .virtualAccount.label,
                                          )
                                          .length <
                                      3
                                  ? filteredPaymentMethodList
                                      .where(
                                        (e) =>
                                            e.paymentGroup ==
                                            PaymentMethod.virtualAccount.label,
                                      )
                                      .length
                                  : 3,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      paymentMethod = filteredPaymentMethodList
                                          .where(
                                            (e) =>
                                                e.paymentGroup ==
                                                PaymentMethod
                                                    .virtualAccount.label,
                                          )
                                          .toList()[index];
                                    });
                                  },
                                  child: CommonOutlinedContainer(
                                    borderColor: ColorResource.grey500,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  CachedNetworkImage(
                                                    imageUrl:
                                                        filteredPaymentMethodList
                                                            .where(
                                                              (e) =>
                                                                  e.paymentGroup ==
                                                                  PaymentMethod
                                                                      .virtualAccount
                                                                      .label,
                                                            )
                                                            .toList()[index]
                                                            .iconUrl,
                                                    width: 64,
                                                    height: 42,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  const SizedBox(width: 16),
                                                  Expanded(
                                                    child: Text(
                                                      filteredPaymentMethodList
                                                          .where(
                                                            (e) =>
                                                                e.paymentGroup ==
                                                                PaymentMethod
                                                                    .virtualAccount
                                                                    .label,
                                                          )
                                                          .toList()[index]
                                                          .paymentName,
                                                      style: TextStyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeightResource
                                                                .semiBold,
                                                        color: ColorResource
                                                            .remittance,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              Text.rich(
                                                TextSpan(
                                                  text: "Admin Fee ",
                                                  children: [
                                                    TextSpan(
                                                      text: "(${convertToIdr(
                                                        filteredPaymentMethodList
                                                            .where(
                                                              (e) =>
                                                                  e.paymentGroup ==
                                                                  PaymentMethod
                                                                      .virtualAccount
                                                                      .label,
                                                            )
                                                            .toList()[index]
                                                            .totalFee,
                                                        0,
                                                      )})",
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeightResource
                                                                .semiBold,
                                                        color: ColorResource
                                                            .black100,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: ColorResource.black100
                                                      .withOpacity(0.6),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Radio(
                                          value: filteredPaymentMethodList
                                              .where(
                                                (e) =>
                                                    e.paymentGroup ==
                                                    PaymentMethod
                                                        .virtualAccount.label,
                                              )
                                              .toList()[index],
                                          groupValue: paymentMethod,
                                          onChanged: (value) {
                                            setState(() {
                                              paymentMethod = value;
                                            });
                                          },
                                          activeColor: ColorResource.remittance,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: index <
                                      (showMoreVirtualAccount
                                              ? filteredPaymentMethodList
                                                  .where(
                                                    (e) =>
                                                        e.paymentGroup ==
                                                        PaymentMethod
                                                            .virtualAccount
                                                            .label,
                                                  )
                                                  .length
                                              : filteredPaymentMethodList
                                                          .where(
                                                            (e) =>
                                                                e.paymentGroup ==
                                                                PaymentMethod
                                                                    .virtualAccount
                                                                    .label,
                                                          )
                                                          .length <
                                                      3
                                                  ? filteredPaymentMethodList
                                                      .where(
                                                        (e) =>
                                                            e.paymentGroup ==
                                                            PaymentMethod
                                                                .virtualAccount
                                                                .label,
                                                      )
                                                      .length
                                                  : 3) -
                                          1,
                                  child: const SizedBox(height: 12),
                                )
                              ],
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        Visibility(
                          visible: filteredPaymentMethodList
                                  .where(
                                    (e) =>
                                        e.paymentGroup ==
                                        PaymentMethod.virtualAccount.label,
                                  )
                                  .length >
                              3,
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  showMoreVirtualAccount =
                                      !showMoreVirtualAccount;
                                });
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(showMoreVirtualAccount
                                      ? "- Less"
                                      : "+ More"),
                                  const SizedBox(width: 8),
                                  Icon(showMoreVirtualAccount
                                      ? Icons.keyboard_arrow_up_outlined
                                      : Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                      if (filteredPaymentMethodList
                          .where(
                            (e) => e.paymentGroup == PaymentMethod.qris.label,
                          )
                          .isNotEmpty) ...[
                        const SizedBox(height: 28),
                        InkWell(
                          onTap: () {
                            setState(() {
                              paymentMethod = filteredPaymentMethodList
                                  .where(
                                    (e) =>
                                        e.paymentGroup ==
                                        PaymentMethod.qris.label,
                                  )
                                  .firstOrNull;
                            });
                          },
                          child: CommonOutlinedContainer(
                            padding: const EdgeInsets.all(16),
                            borderColor: ColorResource.grey500,
                            child: Row(
                              children: [
                                // Assets.icons.icQris.image(scale: 2),
                                CachedNetworkImage(
                                  imageUrl: filteredPaymentMethodList
                                          .where(
                                            (e) =>
                                                e.paymentGroup ==
                                                PaymentMethod.qris.label,
                                          )
                                          .firstOrNull
                                          ?.iconUrl ??
                                      "",
                                  width: 64,
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    filteredPaymentMethodList
                                            .where(
                                              (e) =>
                                                  e.paymentGroup ==
                                                  PaymentMethod.qris.label,
                                            )
                                            .firstOrNull
                                            ?.paymentName ??
                                        "",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                      color: ColorResource.remittance,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Radio(
                                  value: filteredPaymentMethodList
                                      .where(
                                        (e) =>
                                            e.paymentGroup ==
                                            PaymentMethod.qris.label,
                                      )
                                      .firstOrNull,
                                  groupValue: paymentMethod,
                                  onChanged: (value) {
                                    setState(() {
                                      paymentMethod = value;
                                    });
                                  },
                                  activeColor: ColorResource.remittance,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                      const SizedBox(height: 24),
                      // SizedBox(
                      //   width: 100.w,
                      //   child: AppFilledButton(
                      //     text: "Choose",
                      //     onPressed: paymentMethod != null
                      //         ? () {
                      //             Navigator.pop(context);
                      //             // widget.onChoose(paymentMethod);
                      //           }
                      //         : null,
                      //     radius: 16,
                      //     backgroundColor: ColorResource.remittance,
                      //   ),
                      // ),
                      // const SizedBox(height: 40),
                    ],
                  ),
                ),
              );
            },
            failed: (message) {
              return Container();
            },
          );
        },
      ),
      bottomNavigationBar:
          BlocListener<RemittanceDetailBloc, RemittanceDetailState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => const LoadingDialog(),
              );
            },
            senderSuccess: (senderData) {
              Navigator.pop(context);
              senderCountryDetail = CountryDetailModel(
                countryCodeIso3: senderData.data.countryCodeIso3,
                countrySubDivision: senderData.data.subCountry[0].codeName,
                currencyCode: senderData.data.currencyCode,
                countryCodeIso2: senderData.data.countryCodeIso2,
                dialCountryCode: senderData.data.phoneDials[0],
              );
              context
                  .read<RemittanceDetailBloc>()
                  .add(RemittanceDetailEvent.getReceiverCountryDetail(
                    widget.destinationCountryCode ?? "",
                  ));
            },
            receiverSuccess: (receiverData) {
              Navigator.pop(context);
              receiverCountryDetail = CountryDetailModel(
                countryCodeIso3: receiverData.data.countryCodeIso3,
                countrySubDivision: receiverData.data.subCountry[0].codeName,
                currencyCode: receiverData.data.currencyCode,
                countryCodeIso2: receiverData.data.countryCodeIso2,
                dialCountryCode: receiverData.data.phoneDials[0],
              );
              context
                  .read<RemittanceDetailBloc>()
                  .add(RemittanceDetailEvent.getRemittanceDetail(
                    senderCountryDetail,
                    receiverCountryDetail,
                    widget.amount,
                    widget.selectedService?["service_option_code"] ?? "",
                    widget.selectedService?["service_option_routing_code"] ??
                        "",
                  ));
            },
            detailSuccess: (data) {
              Navigator.pop(context);
              showModalBottomSheet(
                isScrollControlled: true,
                showDragHandle: true,
                context: context,
                builder: (context) {
                  return RemittanceSummaryBottomSheet(
                    fieldsControllers: widget.fieldsControllers,
                    selectedService: widget.selectedService,
                    destinationCountryCode: widget.destinationCountryCode,
                    amount: widget.amount,
                    purposeOfTransaction: widget.purposeOfTransaction,
                    sourceOfFunds: widget.sourceOfFunds,
                    paymentMethod: paymentMethod!,
                    detailData: data.data,
                    senderCountryDetail: senderCountryDetail,
                    receiverCountryDetail: receiverCountryDetail,
                  );
                },
              );
            },
            failed: (message) {
              Navigator.pop(context);
              showSnackBar(context, message);
            },
          );
        },
        child: Container(
          width: 100.w,
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 40),
          child: AppFilledButton(
            text: "Continue",
            backgroundColor: ColorResource.remittance,
            radius: 8,
            onPressed: paymentMethod != null
                ? () {
                    context
                        .read<RemittanceDetailBloc>()
                        .add(const RemittanceDetailEvent.getSenderCountryDetail(
                          senderCountryCodeIso3,
                        ));
                  }
                : null,
          ),
        ),
      ),
    );
  }
}
