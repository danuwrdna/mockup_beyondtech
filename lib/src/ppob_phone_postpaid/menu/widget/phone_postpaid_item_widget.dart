import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/src/ppob_phone_postpaid/billing/views/phone_postpaid_billing_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PhonePostpaidItemWidget extends StatelessWidget {
  const PhonePostpaidItemWidget({
    super.key,
    required this.package,
    required this.denomination,
  });

  final PpobPackageDataItem package;
  final PpobPackageDataItemDenominationList denomination;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PhonePostpaidBillingPage(
            package: package,
            denomination: denomination,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    denomination.name,
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right, size: 16.sp)
              ],
            ),
          ),
          Divider(height: 1, color: ColorResource.black100.withOpacity(0.24)),
        ],
      ),
    );
  }
}
