import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:bpay_mobile/src/navigation_history/models/transaction_history_item_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class HomeTransactionHistorySingleItem extends StatelessWidget {
  const HomeTransactionHistorySingleItem({
    super.key,
    required this.item,
  });

  final TransactionHistoryItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorResource.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: ColorResource.blue850.withOpacity(0.16),
            blurRadius: 16,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Assets.images.imgShape2.image(scale: 3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: [
                SizedBox(
                  width: 32,
                  height: 32,
                  child: item.icon,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.label,
                        style: GoogleFonts.poppins(
                          fontSize: 11.sp,
                          fontWeight: FontWeightResource.semiBold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.correspondent,
                        style: GoogleFonts.poppins(
                          fontSize: 9.sp,
                          fontWeight: FontWeightResource.medium,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        DateFormat("hh.mm a").format(item.date),
                        style: GoogleFonts.poppins(fontSize: 9.sp),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Text(
                  (item.boundaryType == HistoryBoundaryType.inbound.value)
                      ? '+${item.nominal}'
                      : '-${item.nominal}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeightResource.semiBold,
                    color:
                        (item.boundaryType == HistoryBoundaryType.inbound.value)
                            ? ColorResource.green500
                            : ColorResource.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
