import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/src/ppob_internet_tv/billing/views/internet_tv_billing_page.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InternetTvServiceItemWidget extends StatelessWidget {
  const InternetTvServiceItemWidget({
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
          builder: (context) => InternetTvBillingPage(
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
                // data.logo,
                const SizedBox(width: 16),
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
