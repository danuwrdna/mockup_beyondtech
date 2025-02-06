import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
import 'package:bpay_mobile/src/balance_top_up/bloc/balance_top_up_bloc.dart';
import 'package:bpay_mobile/src/balance_top_up/models/balance_top_up_response_model.dart';
import 'package:bpay_mobile/src/balance_top_up/success/views/balance_top_up_success_page.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_qris_detail_page.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/app_outlined_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/countdown_widget.dart';
import 'package:bpay_mobile/widgets/loading_dialog.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class BalanceTopUpDetailPage extends StatefulWidget {
  const BalanceTopUpDetailPage({
    super.key,
    this.balanceDetailData,
    this.bankData,
  });

  final DestinationBankItem? bankData;
  final BalanceTopUpData? balanceDetailData;

  @override
  State<BalanceTopUpDetailPage> createState() => _BalanceTopUpDetailPageState();
}

class _BalanceTopUpDetailPageState extends State<BalanceTopUpDetailPage> {
  PaymentMethodItem? paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 64,
          title: Text(
            "Transaction Review".capitalizeEach(),
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeightResource.semiBold,
            ),
          ),
          leading: IconButton(
            onPressed: () =>
                Navigator.popUntil(context, (route) => route.isFirst),
            icon: const Icon(Icons.close),
          ),
          shadowColor: ColorResource.black100.withOpacity(0.16),
          elevation: 4,
          surfaceTintColor: ColorResource.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Detail Transaction",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                // const SizedBox(height: 20),
                CommonShadowedContainer(
                  backgroundColor: ColorResource.white,
                  radius: 8,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                "Finish Before : ${DateFormat("dd MMM yyyy, HH:mm").format(
                                  DateTime.fromMillisecondsSinceEpoch(
                                    (widget.balanceDetailData?.expiredAt ?? 0) *
                                        1000,
                                  ),
                                )} WIB",
                                style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeightResource.medium),
                              ),
                            ),
                            // const SizedBox(width: 16),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 6.5,
                                horizontal: 11,
                              ),
                              decoration: BoxDecoration(
                                color: ColorResource.red.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: CountdownWidget(
                                time: DateTime.fromMillisecondsSinceEpoch(
                                  (widget.balanceDetailData?.expiredAt ?? 0) *
                                      1000,
                                ),
                                textStyle: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeightResource.bold,
                                  color: ColorResource.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppDashedLine(
                        height: 1,
                        color: ColorResource.black100.withOpacity(0.32),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 64,
                                  width: 64,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: ColorResource.blue100,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  // child: CachedNetworkImage(imageUrl: widget.bankData?.iconUrl ?? "" )
                                  child: CachedNetworkImage(
                                    imageUrl: "imageUrl",
                                    placeholder: (context, url) {
                                      return Assets.icons.icBank
                                          .image(scale: 2);
                                    },
                                    errorWidget: (context, url, error) {
                                      return Assets.icons.icBank
                                          .image(scale: 2);
                                    },
                                  ),
                                ),
                                // const SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.balanceDetailData?.paymentName ??
                                          "",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                      ),
                                    ),
                                    // const SizedBox(height: 6),
                                    Text(
                                      "PT Abcd",
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // const SizedBox(height: 24),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 12,
                              ),
                              decoration: BoxDecoration(
                                color: ColorResource.grey100,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  if (widget.balanceDetailData?.paymentCode ==
                                      PaymentMethod.qris.label) ...[
                                    Row(
                                      children: [
                                        Assets.icons.icQris.image(scale: 2),
                                        // const SizedBox(width: 16),
                                        Text(
                                          widget.balanceDetailData
                                                  ?.paymentCode ??
                                              "",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight:
                                                FontWeightResource.semiBold,
                                          ),
                                          softWrap: true,
                                        ),
                                      ],
                                    ),
                                    // const SizedBox(width: 16),
                                    AppFilledButton(
                                      text: "See QR Code",
                                      fontSize: 11.sp,
                                      radius: 20,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return PaymentQrisDetailPage(
                                                backgroundColor:
                                                    ColorResource.blue850,
                                                totalPayment: widget
                                                    .balanceDetailData
                                                    ?.totalPayment
                                                    ?.amount,
                                                qrImage: widget
                                                    .balanceDetailData?.qrImage,
                                                qrContent: widget
                                                    .balanceDetailData
                                                    ?.qrContent,
                                                expiredAt: widget
                                                    .balanceDetailData
                                                    ?.expiredAt,
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ] else ...[
                                    Expanded(
                                      child: Text(
                                        widget.balanceDetailData?.payCode ??
                                            "-",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                        ),
                                      ),
                                    ),
                                    AppOutlinedButton(
                                      text: "Salin",
                                      borderColor: ColorResource.primary,
                                      onPressed: () {
                                        Clipboard.setData(
                                          ClipboardData(
                                            text: widget.balanceDetailData
                                                    ?.payCode ??
                                                "-",
                                          ),
                                        ).then(
                                          (value) {
                                            if (context.mounted) {
                                              showSnackBar(context,
                                                  "Kode VA berhasil disalin");
                                            }
                                          },
                                        );
                                      },
                                      radius: 20,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 7,
                                        horizontal: 17.5,
                                      ),
                                      fontSize: 11.sp,
                                    ),
                                  ],
                                ],
                              ),
                            ),
                            // const SizedBox(height: 24),
                            Text(
                              "Total Payment",
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeightResource.medium,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 12,
                              ),
                              decoration: BoxDecoration(
                                color: ColorResource.grey100,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    convertToIdr(
                                        (widget.balanceDetailData?.totalPayment
                                                    ?.amount ??
                                                0) +
                                            (widget.balanceDetailData
                                                    ?.uniqueCode ??
                                                0),
                                        0),
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                    ),
                                  ),
                                  AppOutlinedButton(
                                    text: "Salin",
                                    borderColor: ColorResource.primary,
                                    onPressed: () {
                                      Clipboard.setData(
                                        ClipboardData(
                                          text: ((widget
                                                          .balanceDetailData
                                                          ?.totalPayment
                                                          ?.amount ??
                                                      0) +
                                                  (widget.balanceDetailData
                                                          ?.uniqueCode ??
                                                      0))
                                              .toString(),
                                        ),
                                      ).then(
                                        (value) {
                                          if (context.mounted) {
                                            showSnackBar(context, "Copied");
                                          }
                                        },
                                      );
                                    },
                                    radius: 20,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 7,
                                      horizontal: 17.5,
                                    ),
                                    fontSize: 11.sp,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 24),
                CommonShadowedContainer(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 12, vertical: 16),
                  radius: 8,
                  backgroundColor: ColorResource.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "See How to Transfers",
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
                // const SizedBox(height: 16),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Cancel Transaction",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeightResource.semiBold,
                        color: ColorResource.blue900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          decoration: BoxDecoration(
            color: ColorResource.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: ColorResource.black.withOpacity(0.13),
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return CommonShadowedContainer(
                        padding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 20,
                        ),
                        radius: 0,
                        backgroundColor: ColorResource.white,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            StartEndTextRowWidget(
                                startText: "Payment Method",
                                endText:
                                    widget.balanceDetailData?.paymentName ??
                                        ""),
                            // const SizedBox(height: 12),
                            StartEndTextRowWidget(
                                startText: "Price",
                                endText: convertToIdr(
                                    widget.balanceDetailData?.totalPayment
                                            ?.amount ??
                                        0,
                                    0)),
                            // const SizedBox(height: 12),
                            StartEndTextRowWidget(
                                startText: "Unique Code",
                                endText: (widget.balanceDetailData?.uniqueCode)
                                    .toString()),
                            // const SizedBox(height: 20),
                            Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color:
                                      ColorResource.primary.withOpacity(0.24),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: StartEndTextRowWidget(
                                  startText: "Total Payment",
                                  endText: convertToIdr(
                                    (widget.balanceDetailData?.totalPayment
                                                ?.amount ??
                                            0) +
                                        (widget.balanceDetailData?.uniqueCode ??
                                            0),
                                    0,
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: CommonOutlinedContainer(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Transaction Details",
                        style: TextStyle(fontSize: 12.sp),
                      ),
                      const Icon(Icons.keyboard_arrow_right_rounded),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 16),
              // BlocListener<BalanceTopUpBloc, BalanceTopUpState>(
              //   listener: (context, state) {
              //     state.when(
              //         initial: () {},
              //         loading: () {
              //           showDialog(
              //             barrierDismissible: false,
              //             context: context,
              //             builder: (context) => const LoadingDialog(),
              //           );
              //         },
              //         success: (data) {
              //           Navigator.pop(context);
              //           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
              //             builder: (context) {
              BalanceTopUpSuccessPage(
                  topUpNominal:
                      widget.balanceDetailData?.totalPayment?.amount ?? 0,
                  idTransaction: widget.balanceDetailData?.trxId ?? "",
                  paymentMethodName:
                      widget.balanceDetailData?.paymentName ?? "",
                  amount: widget.balanceDetailData?.totalPayment?.amount ?? 0,
                  adminFee: widget.balanceDetailData?.formatted?.totalFee ?? "")
            ],

            //  child: SizedBox(
            //     width: 100.w,
            //     child: AppFilledButton(
            //       text: "I've Already Transferred",
            //       onPressed: () {
            //         // showUploadReceiptDialog(context);
            //         context.read<BalanceTopUpBloc>().add(
            //               BalanceTopUpEvent.getBalanceTopUp(
            //                   widget.balanceDetailData?.totalPayment?.amount ??
            //                       0,
            //                   widget.balanceDetailData?.paymentCode ?? ""),
            //             );
            //       },
            //       radius: 8,
            //       backgroundColor: ColorResource.primary,
            //     ),
            //   ),
          ),
        ));
  }
}
