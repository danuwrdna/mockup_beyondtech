import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RemittanceBankDestinationBottomSheet extends StatefulWidget {
  final List<dynamic> description;

  RemittanceBankDestinationBottomSheet({
    super.key,
    required this.onSelect,
    required this.description,
  });

  final Function(String bankName) onSelect;

  @override
  State<RemittanceBankDestinationBottomSheet> createState() =>
      _RemittanceBankDestinationBottomSheetState();
}

class _RemittanceBankDestinationBottomSheetState
    extends State<RemittanceBankDestinationBottomSheet> {
  List<String> bankList() {
    return widget.description
        .map((item) => item['description']
            as String) // Pastikan bahwa description ada dalam format yang diinginkan
        .toList();
  }

  List<String> bankValueList() {
    return widget.description
        .map((item) => item['value']
            as String) // Pastikan bahwa description ada dalam format yang diinginkan
        .toList();
  }

  List<String> filteredBank = [];

  @override
  void initState() {
    filteredBank.addAll(bankList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              LabeledTextField(
                enabledColor: ColorResource.grey500,
                color: ColorResource.grey500,
                contentPadding: const EdgeInsets.all(8),
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: ColorResource.grey300,
                ),
                hintText: "Find Destination Bank",
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                  fontStyle: FontStyle.italic,
                  color: ColorResource.grey300,
                ),
                style: TextStyle(fontSize: 12.sp),
                onChanged: (value) {
                  setState(() {
                    if (value.isEmpty) {
                      filteredBank.clear();
                      filteredBank.addAll(bankList());
                    } else {
                      filteredBank.clear();
                      filteredBank.addAll(
                        bankList().where(
                          (e) => e.toLowerCase().contains(value.toLowerCase()),
                        ),
                      );
                    }
                  });
                },
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: filteredBank.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        widget.onSelect(filteredBank[index]);
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
                        child: Text(filteredBank[index]),
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
