import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/success/views/phone_postpaid_success_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PhonePostpaidProcessingPage extends StatefulWidget {
  const PhonePostpaidProcessingPage({
    super.key,
    required this.paymentMethod,
    required this.costumerName,
    required this.costumerId,
    required this.billingAmount,
    required this.serviceFee,
    required this.serviceName,
    required this.transactionId,
    required this.uniqueCode,
  });

  final PaymentMethodItem? paymentMethod;
  final String costumerName;
  final String costumerId;
  final num billingAmount;
  final num serviceFee;
  final String serviceName;
  final String transactionId;
  final int uniqueCode;

  @override
  State<PhonePostpaidProcessingPage> createState() =>
      _PhonePostpaidProcessingPageState();
}

class _PhonePostpaidProcessingPageState
    extends State<PhonePostpaidProcessingPage> {
  static const String refId = "TRX-8034001";

  @override
  void initState() {
    startWaitingTransaction(context);
    super.initState();
  }

  void startWaitingTransaction(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    if (context.mounted) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return PhonePostpaidSuccessPage(
              paymentMethod: widget.paymentMethod,
              costumerName: widget.costumerName,
              costumerId: widget.costumerId,
              billingAmount: widget.billingAmount,
              serviceFee: widget.serviceFee,
              refId: refId,
            );
          },
        ),
        (route) => route.isFirst,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.grey100,
      body: SingleChildScrollView(
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
                    "Phone Postpaid Bills",
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
                          refId,
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
                                child: Assets.icons.icPostpaidPhoneBills.image(
                                  height: 28,
                                  width: 28,
                                  color: ColorResource.red,
                                  colorBlendMode: BlendMode.srcIn,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.costumerName,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    widget.costumerId,
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
                                widget.billingAmount,
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
    );
  }
}
