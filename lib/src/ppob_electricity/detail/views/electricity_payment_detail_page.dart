import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/ppob_electricity/detail/bloc/detail/electricity_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/detail/bloc/transaction/electricity_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_electricity/review/views/electricity_payment_review_page.dart';
import 'package:bpay_mobile/src/ppob_electricity/status/views/electricity_payment_processing_page.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/src/enter_pin_dialog/view/enter_pin_dialog.dart';
import 'package:bpay_mobile/widgets/confirmation_dialog.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class ElectricityPaymentDetailPage extends StatefulWidget {
  const ElectricityPaymentDetailPage({
    super.key,
    this.paymentMethod,
    required this.productName,
    required this.costumerId,
    required this.selectedPackage,
    required this.selectedDenomination,
    required this.billData,
  });

  final PaymentMethodItem? paymentMethod;
  final String productName;
  final String costumerId;
  final PpobPackageDataItem selectedPackage;

  // token
  final PpobPackageDataItemDenominationList? selectedDenomination;

  // bills
  final InquiryPostpaidResponseModel? billData;

  @override
  State<ElectricityPaymentDetailPage> createState() =>
      _ElectricityPaymentDetailPageState();
}

class _ElectricityPaymentDetailPageState
    extends State<ElectricityPaymentDetailPage> {
  PaymentMethodItem? paymentMethod;
  bool isBiometricActive = false;
  final BiometricsHelper biometricHelper = BiometricsHelper();

  Future<void> _loadBiometricStatus() async {
    bool useBiometric = await biometricHelper.getBiometricPreferences();
    setState(() {
      isBiometricActive = useBiometric;
    });
  }

  Future<void> checkBiometricPreferencesAndTransfer(context) async {
    bool useBiometric = await biometricHelper.getBiometricPreferences();

    if (useBiometric) {
      bool authenticated = await biometricHelper.authenticateBiometric(context);

      if (authenticated) {
        transferSingleusingBiometric();
      } else {
        showSnackBar(context, "Autentikasi Biometrik gagal");
      }
    } else {
      _showPinDialog();
    }
  }

  Future<void> transferSingleusingBiometric() async {
    context.read<ElectricityTransactionBloc>().add(
          ElectricityTransactionEvent.transaction(
              packageId: widget.selectedPackage.id,
              denominationId: widget.productName.toLowerCase().contains("token")
                  ? widget.selectedDenomination?.id ?? ""
                  : widget.selectedPackage.denominationList?.firstOrNull?.id ??
                      "",
              productType: widget.selectedPackage.packageType,
              costumerNumber: widget.costumerId,
              paymentCode: paymentMethod?.paymentCode ?? "",
              isBiometricValid: isBiometricActive.toString()),
        );
  }

  void _showPinDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return EnterPinDialog(
          onPinSuccess: (pin) {
            context
                .read<ElectricityTransactionBloc>()
                .add(ElectricityTransactionEvent.transaction(
                  packageId: widget.selectedPackage.id,
                  denominationId:
                      widget.productName.toLowerCase().contains("token")
                          ? widget.selectedDenomination?.id ?? ""
                          : widget.selectedPackage.denominationList?.firstOrNull
                                  ?.id ??
                              "",
                  productType: widget.selectedPackage.packageType,
                  costumerNumber: widget.costumerId,
                  paymentCode: paymentMethod?.paymentCode ?? "",
                  pin: pin,
                  isBiometricValid: isBiometricActive.toString(),
                ));
          },
        );
      },
    );
  }

  @override
  void initState() {
    paymentMethod = widget.paymentMethod;
    if (widget.productName.toLowerCase().contains("token")) {
      context
          .read<ElectricityDetailBloc>()
          .add(ElectricityDetailEvent.getDetail(
            paymentMethod?.paymentCode ?? "",
            widget.selectedDenomination?.price ?? 0,
          ));
    } else {
      context
          .read<ElectricityDetailBloc>()
          .add(ElectricityDetailEvent.getDetail(
            paymentMethod?.paymentCode ?? "",
            widget.billData?.data.taxDetail.sellingPrice ?? 0,
          ));
    }
    _loadBiometricStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "Transaction Details",
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        constraints: BoxConstraints.expand(height: 80.h),
                        showDragHandle: true,
                        context: context,
                        builder: (context) {
                          return PaymentMethodBottomSheet(
                            nominal: widget.productName
                                    .toLowerCase()
                                    .contains("token")
                                ? widget.selectedDenomination?.price ?? 0
                                : widget.billData?.data.taxDetail
                                        .sellingPrice ??
                                    0,
                            onChoose: (chosenPaymentMethod) {
                              setState(() {
                                paymentMethod = chosenPaymentMethod;
                              });
                              if (widget.productName
                                  .toLowerCase()
                                  .contains("token")) {
                                context
                                    .read<ElectricityDetailBloc>()
                                    .add(ElectricityDetailEvent.getDetail(
                                      paymentMethod?.paymentCode ?? "",
                                      widget.selectedDenomination?.price ?? 0,
                                    ));
                              } else {
                                context
                                    .read<ElectricityDetailBloc>()
                                    .add(ElectricityDetailEvent.getDetail(
                                      paymentMethod?.paymentCode ?? "",
                                      widget.billData?.data.taxDetail
                                              .sellingPrice ??
                                          0,
                                    ));
                              }
                            },
                          );
                        },
                      );
                    },
                    child: CommonOutlinedContainer(
                      padding: const EdgeInsets.all(16),
                      borderColor: ColorResource.black100.withOpacity(0.35),
                      child: Row(
                        children: [
                          if (paymentMethod == null) ...[
                            Assets.icons.icBank.image(scale: 2),
                            const SizedBox(width: 16),
                            Text(
                              "Choose Payment Method",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeightResource.semiBold,
                                color: ColorResource.blue850,
                              ),
                            )
                          ] else ...[
                            paymentMethod?.paymentGroup ==
                                    PaymentMethod.balance.label
                                ? Assets.icons.icWalletFilled.image(scale: 1.5)
                                : CachedNetworkImage(
                                    imageUrl: paymentMethod?.iconUrl ?? "",
                                    width: 64,
                                  ),
                            const SizedBox(width: 16),
                            if (paymentMethod?.paymentGroup ==
                                PaymentMethod.balance.label) ...[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    paymentMethod?.paymentGroup ?? "",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    convertToIdr(
                                      paymentMethod?.userBalance ?? 0,
                                      0,
                                    ),
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                    ),
                                  )
                                ],
                              ),
                            ] else ...[
                              Text(
                                paymentMethod?.paymentGroup ?? "",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              )
                            ]
                          ],
                          const Spacer(),
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 32,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                ],
              ),
            ),
            BlocBuilder<ElectricityDetailBloc, ElectricityDetailState>(
              builder: (context, state) {
                return state.when(
                  initial: () {
                    return const SizedBox();
                  },
                  loading: () {
                    return const Padding(
                      padding: EdgeInsets.only(top: 48),
                      child: Center(child: CustomLoadingWidget()),
                    );
                  },
                  getDetailSuccess: (data) {
                    final detailData = data.data;
                    return BlocListener<ElectricityTransactionBloc,
                        ElectricityTransactionState>(
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
                          transactionSuccess: (transactionData) {
                            Navigator.pop(context);
                            if (paymentMethod?.paymentGroup ==
                                PaymentMethod.balance.label) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ElectricityPaymentProcessingPage(
                                      paymentMethod: paymentMethod,
                                      productName: widget.productName,
                                      costumerId: widget.costumerId,
                                      transactionData: transactionData.data,
                                      selectedDenomination:
                                          widget.selectedDenomination,
                                      billData: widget.billData,
                                    );
                                  },
                                ),
                                (route) => route.isFirst,
                              );
                            } else {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ElectricityPaymentReviewPage(
                                      paymentMethod: paymentMethod!,
                                      productName: widget.productName,
                                      costumerId: widget.costumerId,
                                      transactionData: transactionData.data,
                                      selectedDenomination:
                                          widget.selectedDenomination,
                                      billData: widget.billData,
                                    );
                                  },
                                ),
                                (route) => route.isFirst,
                              );
                            }
                          },
                          failed: (message) {
                            Navigator.pop(context);
                            showSnackBar(context, message);
                          },
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Transaction Detail",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeightResource.semiBold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          CommonShadowedContainer(
                            padding: const EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 20,
                            ),
                            radius: 0,
                            backgroundColor: ColorResource.white,
                            child: Column(
                              children: [
                                StartEndTextRowWidget(
                                  startText: "Payment Method",
                                  endText: "${paymentMethod?.paymentName}",
                                ),
                                const SizedBox(height: 12),
                                StartEndTextRowWidget(
                                  startText: "Product",
                                  endText: widget.productName,
                                ),
                                const SizedBox(height: 12),
                                StartEndTextRowWidget(
                                  startText: "Costumer ID",
                                  endText: widget.costumerId,
                                ),
                                const SizedBox(height: 12),
                                if (widget.productName
                                    .toLowerCase()
                                    .contains("token")) ...[
                                  StartEndTextRowWidget(
                                    startText: "PLN Electricity Amount",
                                    endText:
                                        widget.selectedDenomination?.name ?? "",
                                  ),
                                  const SizedBox(height: 12),
                                  StartEndTextRowWidget(
                                    startText: "Price",
                                    endText: convertToCurrency(
                                      widget.selectedDenomination?.price ?? 0,
                                      0,
                                    ),
                                  ),
                                ] else ...[
                                  StartEndTextRowWidget(
                                    startText: "Costumer Name",
                                    endText: widget.billData?.data.customer
                                            .customerName ??
                                        "",
                                  ),
                                  const SizedBox(height: 12),
                                  StartEndTextRowWidget(
                                    startText: "Billing Amount",
                                    endText: convertToIdr(
                                        int.tryParse(widget
                                                    .billData
                                                    ?.data
                                                    .taxDetail
                                                    .desc
                                                    .detail
                                                    .first
                                                    .nilaiTagihan ??
                                                "") ??
                                            0,
                                        0),
                                  ),
                                  const SizedBox(height: 12),
                                  StartEndTextRowWidget(
                                    startText: "Service Fee",
                                    endText: convertToIdr(
                                        widget.billData?.data.taxDetail.admin ??
                                            0,
                                        0),
                                  ),
                                  if (widget.billData?.data.taxDetail.desc
                                          .detail.first.denda.isNotEmpty ??
                                      false) ...[
                                    const SizedBox(height: 12),
                                    StartEndTextRowWidget(
                                      startText: "Penalty",
                                      endText: convertToIdr(
                                          int.tryParse(widget
                                                      .billData
                                                      ?.data
                                                      .taxDetail
                                                      .desc
                                                      .detail
                                                      .first
                                                      .denda ??
                                                  "") ??
                                              0,
                                          0),
                                    ),
                                  ],
                                ],
                                const SizedBox(height: 12),
                                StartEndTextRowWidget(
                                  startText: "Admin Fee",
                                  endText: convertToIdr(
                                    detailData.totalFee,
                                    0,
                                  ),
                                  endTextDecoration: detailData.paymentMethod
                                              .fee.isFeatureFree &&
                                          detailData
                                              .paymentMethod.fee.isPaymentFree
                                      ? TextDecoration.lineThrough
                                      : null,
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color:
                                        ColorResource.blue850.withOpacity(0.24),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: StartEndTextRowWidget(
                                    startText: "Total Payment",
                                    endText: convertToIdr(
                                      widget.productName
                                              .toLowerCase()
                                              .contains("token")
                                          ? widget.selectedDenomination
                                                  ?.price ??
                                              0
                                          : widget.billData?.data.taxDetail
                                                  .sellingPrice ??
                                              0,
                                      0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  failed: (message) {
                    showSnackBar(context, message);
                    return const SizedBox();
                  },
                );
              },
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
      bottomNavigationBar:
          BlocBuilder<ElectricityDetailBloc, ElectricityDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const SizedBox(),
            getDetailSuccess: (data) {
              return Container(
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
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      color: ColorResource.blue850.withOpacity(0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonOutlinedContainer(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 9,
                            ),
                            borderColor: ColorResource.blue850,
                            radius: 8,
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  Assets.icons.icCoupon,
                                  colorFilter: const ColorFilter.mode(
                                    ColorResource.blue850,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  "User Promo",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeightResource.semiBold,
                                    color: ColorResource.primary,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: ColorResource.blue850,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 24, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total Price",
                                  style: TextStyle(fontSize: 11.sp)),
                              const SizedBox(height: 4),
                              Text(
                                convertToIdr(data.data.totalAmount, 0),
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 34.w,
                            child: AppFilledButton(
                              text: "Continue",
                              backgroundColor: ColorResource.blue850,
                              onPressed: paymentMethod != null
                                  ? () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return ConfirmationDialog(
                                            message:
                                                "Is The Data You Entered Correct?",
                                            primaryButtonText: "Yes, Continue",
                                            primaryButtonPressed: () {
                                              Navigator.pop(context);
                                              if (paymentMethod?.paymentGroup ==
                                                  PaymentMethod.balance.label) {
                                                checkBiometricPreferencesAndTransfer(context);
                                              } else {
                                                context
                                                    .read<
                                                        ElectricityTransactionBloc>()
                                                    .add(
                                                        ElectricityTransactionEvent
                                                            .transaction(
                                                      packageId: widget
                                                          .selectedPackage.id,
                                                      denominationId: widget
                                                              .productName
                                                              .toLowerCase()
                                                              .contains("token")
                                                          ? widget.selectedDenomination
                                                                  ?.id ??
                                                              ""
                                                          : widget
                                                                  .selectedPackage
                                                                  .denominationList
                                                                  ?.firstOrNull
                                                                  ?.id ??
                                                              "",
                                                      productType: widget
                                                          .selectedPackage
                                                          .packageType,
                                                      costumerNumber:
                                                          widget.costumerId,
                                                      paymentCode: paymentMethod
                                                              ?.paymentCode ??
                                                          "",
                                                      pin : null,
                                                      isBiometricValid : isBiometricActive.toString(),
                                                    ));
                                              }
                                            },
                                            secondaryButtonText: "No, Go Back",
                                            secondaryButtonPressed: () =>
                                                Navigator.pop(context),
                                          );
                                        },
                                      );
                                    }
                                  : null,
                              radius: 16,
                              fontSize: 12.sp,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            failed: (message) => const SizedBox(),
          );
        },
      ),
    );
  }
}
