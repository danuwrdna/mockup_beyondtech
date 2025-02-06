import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_status_enum.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/status/bloc/phone_data_status_bloc.dart';
import 'package:bpay_mobile/src/ppob_phone_credit/success/views/phone_data_success_page.dart';
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

class PhoneDataProcessingPage extends StatefulWidget {
  const PhoneDataProcessingPage({
    super.key,
    required this.paymentMethod,
    required this.productName,
    required this.phoneNumber,
    required this.selectedPackage,
    required this.selectedDenomination,
    required this.transactionData,
  });

  final PaymentMethodItem? paymentMethod;
  final String productName;
  final String phoneNumber;
  final PpobPackageDataItem selectedPackage;
  final PpobPackageDataItemDenominationList selectedDenomination;
  final PpobTransactionData transactionData;

  @override
  State<PhoneDataProcessingPage> createState() =>
      _PhoneDataProcessingPageState();
}

class _PhoneDataProcessingPageState extends State<PhoneDataProcessingPage> {
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
        context
            .read<PhoneDataStatusBloc>()
            .add(PhoneDataStatusEvent.getTransactionStatus(
              widget.transactionData.transactionId,
            ));
      }
    } else {
      await Future.delayed(const Duration(seconds: 30));
      if (context.mounted) {
        context
            .read<PhoneDataStatusBloc>()
            .add(PhoneDataStatusEvent.getTransactionStatus(
              widget.transactionData.transactionId,
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.grey100,
      body: BlocListener<PhoneDataStatusBloc, PhoneDataStatusState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (data) {
              if (data.data.statusTransaction == TransactionStatus.paid.value ||
                  data.data.statusTransaction ==
                      TransactionStatus.refunded.value ||
                  data.data.statusTransaction ==
                      TransactionStatus.success.value) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PhoneDataSuccessPage(
                        paymentMethod: widget.paymentMethod,
                        productName: widget.productName,
                        phoneNumber: widget.phoneNumber,
                        selectedPackage: widget.selectedPackage,
                        selectedDenomination: widget.selectedDenomination,
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
            failed: (message) => showSnackBar(context, message),
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
                      widget.productName,
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
                                height: 36,
                                width: 36,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: ColorResource.red300.withOpacity(0.28),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    Assets.icons.icPhoneCredit,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.productName == "Phone Credit"
                                          ? widget.selectedPackage.packageName
                                          : widget.selectedDenomination.name,
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      widget.phoneNumber,
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
                                  widget.selectedDenomination.price,
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
