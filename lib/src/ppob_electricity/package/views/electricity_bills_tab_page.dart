import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class ElectricityBillsTabPage extends StatelessWidget {
  const ElectricityBillsTabPage({
    super.key,
    required this.billDetail,
  });

  final InquiryPostpaidResponseModel? billDetail;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: billDetail != null && (billDetail?.data.customer.customerName.isNotEmpty ?? false),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Billing Details",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
              const SizedBox(height: 16),
              StartEndTextRowWidget(
                startText: "Name",
                endText: "${billDetail?.data.customer.customerName}",
              ),
              const SizedBox(height: 12),
              StartEndTextRowWidget(
                startText: "Costumer ID",
                endText: "${billDetail?.data.customer.customerNo}",
              ),
              const SizedBox(height: 12),
              StartEndTextRowWidget(
                startText: "Watts",
                endText: "${billDetail?.data.taxDetail.desc.daya.toString()}",
              ),
              const SizedBox(height: 12),
              StartEndTextRowWidget(
                startText: "Tariff",
                endText: "${billDetail?.data.taxDetail.desc.tarif}",
              ),
              const SizedBox(height: 12),
              StartEndTextRowWidget(
                startText: "Billing Period",
                endText: DateFormat("MMMM yyyy").format(DateTime.tryParse(
                        "${billDetail?.data.taxDetail.desc.detail.first.periode}01") ??
                    DateTime.now()),
              ),
              const SizedBox(height: 12),
              StartEndTextRowWidget(
                startText: "Billing Amount",
                endText: convertToIdr(
                    int.tryParse(billDetail
                                ?.data.taxDetail.desc.detail.first.nilaiTagihan ??
                            "") ??
                        0,
                    0),
              ),
              const SizedBox(height: 12),
              StartEndTextRowWidget(
                startText: "Service Fee",
                endText: convertToIdr(billDetail?.data.taxDetail.admin ?? 0, 0),
              ),
              if (billDetail?.data.taxDetail.desc.detail.first.denda.isNotEmpty ??
                  false) ...[
                const SizedBox(height: 12),
                StartEndTextRowWidget(
                  startText: "Penalty",
                  endText: convertToIdr(
                      int.tryParse(billDetail
                                  ?.data.taxDetail.desc.detail.first.denda ??
                              "") ??
                          0,
                      0),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
