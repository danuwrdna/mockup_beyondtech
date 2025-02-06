import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/enter_pin_dialog/view/enter_pin_dialog.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/detail/detail/bloc/internet_tv_detail_bloc.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/detail/transaction/bloc/internet_tv_transaction_bloc.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/review/views/internet_tv_review_page.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/status/views/internet_tv_processing_page.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class InternetTvDetailPage extends StatefulWidget {
  const InternetTvDetailPage({
    super.key,
    this.paymentMethod,
    required this.serviceName,
    required this.costumerName,
    required this.costumerId,
    required this.billingAmount,
    required this.serviceFee,
    required this.denomId,
    required this.packageId,
    required this.packageType,
    required this.customerNumber,
  });

  final PaymentMethodItem? paymentMethod;
  final String serviceName;
  final String costumerName;
  final String costumerId;
  final int billingAmount;
  final int serviceFee;
  final String denomId;
  final String packageId;
  final String packageType;
  final String customerNumber;

  @override
  State<InternetTvDetailPage> createState() => _InternetTvDetailPageState();
}

class _InternetTvDetailPageState extends State<InternetTvDetailPage> {
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
    context
        .read<InternetTvTransactionBloc>()
        .add(InternetTvTransactionEvent.transaction(
          packageId: widget.packageId,
          denominationId: widget.denomId,
          productType: widget.packageType,
          costumerNumber: widget.customerNumber,
          paymentCode: paymentMethod?.paymentCode ?? "",
          isBiometricValid: isBiometricActive.toString()
        ));
  }

  void _showPinDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return EnterPinDialog(
          onPinSuccess: (pin) {
            context
                .read<InternetTvTransactionBloc>()
                .add(InternetTvTransactionEvent.transaction(
                  packageId: widget.packageId,
                  denominationId: widget.denomId,
                  productType: widget.packageType,
                  costumerNumber: widget.customerNumber,
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
    setState(() {
      paymentMethod = widget.paymentMethod;
    });
    context.read<InternetTvDetailBloc>().add(
          InternetTvDetailEvent.getDetail(
            paymentMethod?.paymentCode ?? "",
            widget.billingAmount,
          ),
        );
    _loadBiometricStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          "transaction details".capitalizeEach(),
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
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
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
                            nominal: widget.billingAmount,
                            onChoose: (chosenPaymentMethod) {
                              setState(() {
                                paymentMethod = chosenPaymentMethod;
                              });
                              context
                                  .read<InternetTvDetailBloc>()
                                  .add(InternetTvDetailEvent.getDetail(
                                    paymentMethod?.paymentCode ?? "",
                                    widget.billingAmount,
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
                                color: ColorResource.blue850,
                              ),
                            ),
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
                                    paymentMethod!.paymentGroup,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                    ),
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
                                    ),
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
                  const SizedBox(height: 28),
                  Text(
                    "Transaction Detail",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<InternetTvDetailBloc, InternetTvDetailState>(
              builder: (context, state) {
                return state.when(
                    initial: () => const SizedBox(),
                    loading: () {
                      return const Padding(
                        padding: EdgeInsets.only(top: 48),
                        child: Center(
                          child: CustomLoadingWidget(),
                        ),
                      );
                    },
                    getInternetTvDetailSuccess: (internetTvCheckoutData) {
                      return BlocListener<InternetTvTransactionBloc,
                              InternetTvTransactionState>(
                          listener: (context, state) {
                            state.when(
                              initial: () {},
                              loading: () {},
                              transactionInternetTvSuccess:
                                  (internetTvDetailData) {
                                Navigator.pop(context);
                                if (paymentMethod?.paymentGroup ==
                                    PaymentMethod.balance.label) {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return InternetTvProcessingPage(
                                          paymentMethod: paymentMethod,
                                          costumerName: widget.costumerName,
                                          costumerId: widget.costumerId,
                                          billingAmount: widget.billingAmount,
                                          serviceFee: widget.serviceFee,
                                          serviceName: widget.serviceName,
                                          transactionId: internetTvDetailData
                                              .data.transactionId,
                                          uniqueCode: internetTvDetailData
                                              .data.uniqueCode,
                                        );
                                      },
                                    ),
                                    (route) => route.isFirst,
                                  );
                                } else {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            InternetTvReviewPage(
                                              paymentMethod: paymentMethod,
                                              costumerName: widget.costumerName,
                                              costumerId: widget.costumerId,
                                              billingAmount:
                                                  widget.billingAmount,
                                              serviceFee: widget.serviceFee,
                                              serviceName: widget.serviceName,
                                              transactionId:
                                                  internetTvDetailData
                                                      .data.transactionId,
                                              uniqueCode: internetTvDetailData
                                                  .data.uniqueCode,
                                              vaCode: internetTvDetailData
                                                  .data.paymentChannel.payCode,
                                              paymentMethodName:
                                                  internetTvDetailData
                                                      .data.paymentChannel.name,
                                              expriredAt: internetTvDetailData
                                                  .data.expiredAt,
                                            )),
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
                            children: [
                              CommonShadowedContainer(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 18, horizontal: 20),
                                radius: 0,
                                backgroundColor: ColorResource.white,
                                child: Column(
                                  children: [
                                    StartEndTextRowWidget(
                                      startText: "Service Name",
                                      endText: widget.serviceName,
                                    ),
                                    const SizedBox(height: 12),
                                    StartEndTextRowWidget(
                                      startText: "Name",
                                      endText: widget.costumerName,
                                    ),
                                    const SizedBox(height: 12),
                                    StartEndTextRowWidget(
                                      startText: "Costumer ID",
                                      endText: widget.costumerId,
                                    ),
                                    const SizedBox(height: 12),
                                    StartEndTextRowWidget(
                                      startText: "Amount",
                                      endText:
                                          convertToIdr(widget.billingAmount, 0),
                                    ),
                                    const SizedBox(height: 12),
                                    StartEndTextRowWidget(
                                      startText: "Service Fee",
                                      endText:
                                          convertToIdr(widget.serviceFee, 0),
                                    ),
                                    const SizedBox(height: 12),
                                    StartEndTextRowWidget(
                                      startText: "Admin Fee",
                                      endText: convertToIdr(
                                          paymentMethod?.totalFee ?? 0, 0),
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: ColorResource.primary
                                            .withOpacity(0.24),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: StartEndTextRowWidget(
                                        startText: "Total Payment",
                                        endText: convertToIdr(
                                          widget.billingAmount +
                                              (paymentMethod?.totalFee ?? 0) +
                                              widget.serviceFee,
                                          0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ));
                    },
                    failed: (message) => const SizedBox());
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BlocBuilder<InternetTvDetailBloc, InternetTvDetailState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox(),
              loading: () => const SizedBox(),
              getInternetTvDetailSuccess: (data) {
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
                        color: ColorResource.primary.withOpacity(0.24),
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
                                    "Use Promo",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                      color: ColorResource.blue850,
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
                                const SizedBox(height: 8),
                                Text(
                                  convertToIdr(
                                    widget.billingAmount +
                                        (paymentMethod?.totalFee ?? 0) +
                                        widget.serviceFee,
                                    0,
                                  ),
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
                                backgroundColor: ColorResource.primary,
                                onPressed: paymentMethod != null
                                    ? () {
                                        if (paymentMethod?.paymentGroup ==
                                            PaymentMethod.balance.label) {
                                          checkBiometricPreferencesAndTransfer(context);
                                        } else {
                                          context
                                              .read<InternetTvTransactionBloc>()
                                              .add(
                                                InternetTvTransactionEvent
                                                    .transaction(
                                                  packageId: widget.packageId,
                                                  denominationId:
                                                      widget.denomId,
                                                  productType:
                                                      widget.packageType,
                                                  costumerNumber:
                                                      widget.customerNumber,
                                                  paymentCode: paymentMethod
                                                          ?.paymentCode ??
                                                      "",
                                                ),
                                              );
                                        }
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
