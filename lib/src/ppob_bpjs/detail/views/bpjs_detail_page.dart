import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/ppob_bpjs/detail/bloc/bpjs_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_bpjs/detail/transaction/bloc/bpjs_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_bpjs/review/views/bpjs_review_page.dart';
import 'package:bpay_mobile/src/ppob_bpjs/success/views/bpjs_processing_page.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/src/enter_pin_dialog/view/enter_pin_dialog.dart';
import 'package:bpay_mobile/widgets/confirmation_dialog.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BpjsDetailPage extends StatefulWidget {
  const BpjsDetailPage({
    super.key,
    this.paymentMethod,
    required this.bpjsNumber,
    required this.price,
    required this.adminFee,
    required this.recipient,
    required this.packageId,
    required this.denominationId,
    required this.productType,
  });

  final PaymentMethodItem? paymentMethod;
  final String bpjsNumber;
  final int price;
  final int adminFee;
  final String recipient;
  final String packageId;
  final String denominationId;
  final String productType;

  @override
  State<BpjsDetailPage> createState() => _BpjsDetailPageState();
}

class _BpjsDetailPageState extends State<BpjsDetailPage> {
  PaymentMethodItem? paymentMethod;
  int? uniqueCode;
  bool isBiometricActive = false;
  final BiometricsHelper biometricHelper = BiometricsHelper();

  Future<void> _loadBiometricStatus() async {
    bool useBiometric = await biometricHelper.getBiometricPreferences();
    setState(() {
      isBiometricActive = useBiometric;
    });
  }

  @override
  void initState() {
    setState(() {
      paymentMethod = widget.paymentMethod;
    });
    context.read<BpjsDetailBloc>().add(BpjsDetailEvent.getDetail(
        paymentMethod?.paymentCode ?? "", widget.price));
    _loadBiometricStatus();
    super.initState();
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
    context.read<BpjsTransactionBloc>().add(
          BpjsTransactionEvent.transaction(
            packageId: widget.packageId,
            denominationId: widget.denominationId,
            productType: widget.productType,
            costumerNumber: widget.bpjsNumber,
            paymentCode: paymentMethod?.paymentCode ?? "",
          ),
        );
  }

  void _showPinDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return EnterPinDialog(
          onPinSuccess: (pin) {
            context.read<BpjsTransactionBloc>().add(
                BpjsTransactionEvent.transaction(
                    packageId: widget.packageId,
                    denominationId: widget.denominationId,
                    productType: widget.productType,
                    costumerNumber: widget.bpjsNumber,
                    paymentCode: paymentMethod?.paymentCode ?? "",
                    pin: pin,
                    isBiometricValid: isBiometricActive.toString()));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "Transaction Detail",
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
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
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
                            nominal: widget.price,
                            balanceColor: ColorResource.bpjs,
                            onChoose: (chosenPaymentMethod) {
                              setState(
                                  () => paymentMethod = chosenPaymentMethod);
                              context
                                  .read<BpjsDetailBloc>()
                                  .add(BpjsDetailEvent.getDetail(
                                    paymentMethod?.paymentCode ?? "",
                                    widget.price,
                                  ));
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
                                color: ColorResource.bpjs,
                              ),
                            ),
                          ] else ...[
                            paymentMethod?.paymentGroup ==
                                    PaymentMethod.balance.label
                                ? Assets.icons.icWalletFilled.image(
                                    scale: 1.5, color: ColorResource.bpjs)
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
                                    paymentMethod!.paymentGroup,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                        color: ColorResource.bpjs),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    convertToIdr(
                                      paymentMethod!.userBalance,
                                      0,
                                    ),
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                        color: ColorResource.bpjs),
                                  )
                                ],
                              ),
                            ] else ...[
                              Text(
                                paymentMethod!.paymentGroup,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              ),
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
                ],
              ),
            ),
            BlocBuilder<BpjsDetailBloc, BpjsDetailState>(
              builder: (context, state) {
                return state.when(
                    initial: () {
                      return const SizedBox();
                    },
                    loading: () {
                      return const Padding(
                        padding: EdgeInsets.only(top: 48),
                        child: Center(
                          child: CustomLoadingWidget(),
                        ),
                      );
                    },
                    getBpjsDetailSuccess: (bpjsdetailData) {
                      return BlocListener<BpjsTransactionBloc,
                          BpjsTransactionState>(
                        listener: (context, state) {
                          state.when(
                            initial: () {},
                            loading: () {},
                            transactionBpjsSuccess:
                                (bpjsdetailTransactionData) {
                              setState(() {
                                uniqueCode =
                                    bpjsdetailTransactionData.data.uniqueCode;
                              });

                              Navigator.pop(context);
                              if (paymentMethod?.paymentGroup ==
                                  PaymentMethod.balance.label) {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return BpjsProcessingPage(
                                        recipient: widget.recipient,
                                        bpjsNumber: widget.bpjsNumber,
                                        price: widget.price,
                                        adminFee: widget.adminFee,
                                        uniqueCode: bpjsdetailTransactionData
                                            .data.uniqueCode,
                                        transactionData:
                                            bpjsdetailTransactionData.data,
                                      );
                                    },
                                  ),
                                  (route) => route.isFirst,
                                );
                              } else {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BpjsReviewPage(
                                      paymentMethod: paymentMethod,
                                      bpjsNumber: widget.bpjsNumber,
                                      price: widget.price,
                                      adminFee: widget.adminFee,
                                      uniqueCode: bpjsdetailTransactionData
                                          .data.uniqueCode,
                                      recipient: widget.recipient,
                                      transactionData:
                                          bpjsdetailTransactionData.data,
                                    ),
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
                              padding: const EdgeInsets.fromLTRB(20, 4, 20, 24),
                              child: Text(
                                "Transaction Detail",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              ),
                            ),
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
                                    startText: "BPJS Number",
                                    endText: widget.bpjsNumber,
                                  ),
                                  const SizedBox(height: 12),
                                  StartEndTextRowWidget(
                                    startText: "Price",
                                    endText: convertToIdr(widget.price, 0),
                                  ),
                                  const SizedBox(height: 12),
                                  StartEndTextRowWidget(
                                    startText: "Admin Fee",
                                    endText: convertToIdr(
                                      widget.adminFee +
                                          (paymentMethod?.totalFee ?? 0),
                                      0,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  // StartEndTextRowWidget(
                                  //   startText: "Unique Code",
                                  //   endText:
                                  //       convertToIdr(uniqueCode ?? 0, 0),
                                  // ),
                                  const SizedBox(height: 20),
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: ColorResource.lightBpjs,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: StartEndTextRowWidget(
                                      startText: "Total Payment",
                                      endText: convertToIdr(
                                        widget.price +
                                            widget.adminFee +
                                            (paymentMethod?.totalFee ?? 0) +
                                            (uniqueCode ?? 0),
                                        0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: ColorResource.lightBpjs,
                                border: Border.all(color: ColorResource.bpjs),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    Assets.icons.icInfo,
                                    colorFilter: const ColorFilter.mode(
                                      ColorResource.bpjs,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Text(
                                      "The unique code ${convertToIdr(uniqueCode ?? 0, 0)} will go to BeyondTech Points. Use it for payment discount for next transactions.",
                                      style: GoogleFonts.poppins(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeightResource.medium,
                                        color: ColorResource.black100
                                            .withOpacity(0.6),
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
                    failed: (message) => const SizedBox());
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<BpjsDetailBloc, BpjsDetailState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox(),
              loading: () => const SizedBox(),
              getBpjsDetailSuccess: (data) {
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
                            vertical: 10, horizontal: 20),
                        color: ColorResource.lightBpjs,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonOutlinedContainer(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 9,
                              ),
                              borderColor: ColorResource.bpjs,
                              radius: 8,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    Assets.icons.icCoupon,
                                    colorFilter: const ColorFilter.mode(
                                      ColorResource.bpjs,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    "Use Promo",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                      color: ColorResource.bpjs,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: ColorResource.bpjs,
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
                                Text("Total Price",
                                    style: TextStyle(fontSize: 11.sp)),
                                const SizedBox(height: 4),
                                Text(
                                  convertToIdr(
                                    widget.price +
                                        widget.adminFee +
                                        (paymentMethod?.totalFee ?? 0) +
                                        (uniqueCode ?? 0),
                                    0,
                                  ),
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeightResource.semiBold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 40.w,
                              child: AppFilledButton(
                                text: "Continue",
                                backgroundColor: ColorResource.bpjs,
                                onPressed: paymentMethod != null
                                    ? () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return ConfirmationDialog(
                                              message:
                                                  "Is The Data You Entered Correct?",
                                              primaryButtonText:
                                                  "Yes, Continue",
                                              primaryButtonPressed: () {
                                                if (paymentMethod
                                                        ?.paymentGroup ==
                                                    PaymentMethod
                                                        .balance.label) {
                                                  checkBiometricPreferencesAndTransfer(
                                                      context);
                                                } else {
                                                  context
                                                      .read<
                                                          BpjsTransactionBloc>()
                                                      .add(
                                                        BpjsTransactionEvent.transaction(
                                                            packageId: widget
                                                                .packageId,
                                                            denominationId: widget
                                                                .denominationId,
                                                            productType: widget
                                                                .productType,
                                                            costumerNumber:
                                                                widget
                                                                    .bpjsNumber,
                                                            paymentCode:
                                                                paymentMethod
                                                                        ?.paymentCode ??
                                                                    "",
                                                            pin: null,
                                                            isBiometricValid:
                                                                isBiometricActive
                                                                    .toString()),
                                                      );
                                                }
                                              },
                                              secondaryButtonText:
                                                  "No, Go Back",
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              failed: (message) => const SizedBox());
        },
      ),
    );
  }
}
