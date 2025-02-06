import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/transfer_balance/success/views/balance_transfer_success_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BalanceTransferStatusPage extends StatefulWidget {
  const BalanceTransferStatusPage({
    super.key,
    required this.recipient,
    required this.phoneNumber,
    required this.nominal,
    required this.note,
  });

  final RecipientData recipient;
  final String phoneNumber;
  final int nominal;
  final String note;

  @override
  State<BalanceTransferStatusPage> createState() =>
      _BalanceTransferStatusPageState();
}

class _BalanceTransferStatusPageState extends State<BalanceTransferStatusPage> {
  String transactionId = "#trf12345678";

  @override
  void initState() {
    startWaitingTransaction(context);
    super.initState();
  }

  void startWaitingTransaction(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 5));
    if (context.mounted) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => BalanceTransferSuccessPage(
            recipient: widget.recipient.name!,
            phoneNumber: widget.recipient.number!,
            nominal: widget.nominal,
            note: widget.note,
            transactionId: transactionId,
          ),
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
                    "Balance Transfer",
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
                          "ID $transactionId",
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
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorResource.red,
                              ),
                              child: Center(
                                child: Text(
                                  createInitial(widget.recipient.name) ?? "",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeightResource.semiBold,
                                    color: ColorResource.white,
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
                                    widget.recipient.name!,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    formatObscurePhoneNumber(
                                      widget.phoneNumber,
                                    ),
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
                              convertToIdr(widget.nominal, 0),
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
