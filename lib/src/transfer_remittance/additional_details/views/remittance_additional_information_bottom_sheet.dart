import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RemittanceAdditionalInformationBottomSheet extends StatefulWidget {
  const RemittanceAdditionalInformationBottomSheet({
    super.key,
    required this.itemList,
    required this.onSelect,
    required this.bottomSheetTitle,
  });

  final String bottomSheetTitle;
  final List<dynamic> itemList;
  final Function(String value) onSelect;

  @override
  State<RemittanceAdditionalInformationBottomSheet> createState() =>
      _RemittanceAdditionalInformationBottomSheetState();
}

class _RemittanceAdditionalInformationBottomSheetState
    extends State<RemittanceAdditionalInformationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                widget.bottomSheetTitle,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.itemList.length,
                  itemBuilder: (context, index) {
                    final item = widget.itemList[index]; // Ambil item

                    return InkWell(
                      onTap: () {
                        // Saat item dipilih, gunakan value dan kembalikan ke parent
                        Navigator.pop(context);
                        widget
                            .onSelect(item.value!); // Kirim value yang dipilih
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 14),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: ColorResource.black100.withOpacity(0.2),
                            ),
                          ),
                        ),
                        child: Text(
                          item.description!, // Tampilkan description ke pengguna
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
