import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_status_enum.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/ppob_e_wallet/status/bloc/e_wallet_status_bloc.dart';
import 'package:bpay_mobile/src/ppob_e_wallet/status/views/e_wallet_success_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class EWalletProcessingPage extends StatefulWidget {
  const EWalletProcessingPage({
    super.key,
    required this.eWalletDestination,
    required this.eWalletNumber,
    required this.price,
    required this.paymentMethod,
    required this.nominal,
    required this.transactionData,
    required this.detailData,
  });

  final String eWalletDestination;
  final String eWalletNumber;
  final int price;
  final String nominal;
  final PpobTransactionData transactionData;
  final PpobCheckoutResponseData detailData;
  final PaymentMethodItem? paymentMethod;

  @override
  State<EWalletProcessingPage> createState() => _EWalletProcessingPageState();
}

class _EWalletProcessingPageState extends State<EWalletProcessingPage> {
  @override
  void initState() {
    startWaitingTransaction(context);
    super.initState();
  }

  void startWaitingTransaction(
    BuildContext context, {
    bool isInitial = true,
  }) async {
    if (isInitial) {
      await Future.delayed(const Duration(seconds: 5));
      if (context.mounted) {
        context.read<EWalletStatusBloc>().add(
            EWalletStatusEvent.getTransactionStatus(
                widget.transactionData.transactionId));
      }
    } else {
      await Future.delayed(const Duration(seconds: 30));
      if (context.mounted) {
        context.read<EWalletStatusBloc>().add(
            EWalletStatusEvent.getTransactionStatus(
                widget.transactionData.transactionId));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.grey100,
      body: BlocListener<EWalletStatusBloc, EWalletStatusState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (data) {
              if (data.data.statusTransaction == TransactionStatus.paid.value ||
                  data.data.statusTransaction ==
                      TransactionStatus.success.value) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return EWalletSuccessPage(
                        price: widget.price,
                        eWalletDestination: widget.eWalletDestination,
                        paymentMethod: widget.paymentMethod,
                        transactionDetailData: data.data,
                      );
                    },
                  ),
                  (route) => route.isFirst,
                );
              } else {
                startWaitingTransaction(context, isInitial: false);
              }
            },
            failed: (message) {
              showSnackBar(context, message);
            },
          );
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
                  color: ColorResource.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 100.w,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Transaction Status",
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () => Navigator.pop(context),
                                child: const Icon(Icons.close, size: 30),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Assets.images.imgWaitingTransaction.image(scale: 2),
                      const SizedBox(height: 28),
                      Text(
                        "we are processing your transaction".capitalizeEach(),
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      "E-Wallet",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeightResource.semiBold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    CommonOutlinedContainer(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: ColorResource.white,
                      borderColor: ColorResource.black100.withOpacity(0.5),
                      child: Column(
                        children: [
                          Text(
                            widget.transactionData.transactionId,
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeightResource.semiBold,
                              color: ColorResource.blue850,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: ColorResource.red300.withOpacity(0.28),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    Assets.icons.icEWallet,
                                    height: 28,
                                    width: 28,
                                    colorFilter: const ColorFilter.mode(
                                      ColorResource.red,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.eWalletDestination,
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      widget.eWalletNumber,
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                convertToIdr(
                                  widget.price,
                                  0,
                                ),
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    CommonShadowedContainer(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: ColorResource.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Did you transfer using the EDC Machine or Cash Deposit?",
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ),
                          const SizedBox(width: 16),
                          AppOutlinedButton(
                            radius: 24,
                            borderColor: ColorResource.blue850,
                            text: "See Detail",
                            fontSize: 10.sp,
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: 100.w,
                      child: AppFilledButton(
                        text: "chat us for help".capitalizeEach(),
                        leading: const Icon(
                          Icons.help_outline_rounded,
                          color: ColorResource.white,
                        ),
                        onPressed: () {},
                        backgroundColor: ColorResource.lightBlue,
                        radius: 8,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
