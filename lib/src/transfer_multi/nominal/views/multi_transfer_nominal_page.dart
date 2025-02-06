import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/transfer_multi/detail/views/multi_transfer_detail_page.dart';
import 'package:bpay_mobile/widgets/app_number_keyboard_widget.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MultiTransferNominalPage extends StatefulWidget {
  const MultiTransferNominalPage({
    super.key,
    this.isAddDestination = false,
    required this.recipient,
    required this.bankData,
  });

  final bool isAddDestination;
  final RecipientData recipient;
  final DestinationBankItem bankData;

  @override
  State<MultiTransferNominalPage> createState() =>
      _MultiTransferNominalPageState();
}

class _MultiTransferNominalPageState extends State<MultiTransferNominalPage> {
  List<int> nominal = [];
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorResource.grey100,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: 100.w,
                height: 350,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [ColorResource.blue850, ColorResource.blue650],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
              ),
              Column(
                children: [
                  AppBar(
                    toolbarHeight: 64,
                    title: Text(
                      "Transfer",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeightResource.semiBold,
                        color: ColorResource.white,
                      ),
                    ),
                    centerTitle: true,
                    leading: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: ColorResource.white,
                      ),
                    ),
                    surfaceTintColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 88,
                    width: 88,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorResource.blue400,
                      border: Border.all(color: ColorResource.white, width: 2),
                    ),
                    child: Center(
                      child: Text(
                        createInitial(widget.recipient.name) ?? "",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeightResource.semiBold,
                          color: ColorResource.blue850,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      widget.recipient.name ?? "",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeightResource.semiBold,
                        color: ColorResource.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.bankData.bankName ?? widget.bankData.bankCode ?? "",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.recipient.number ?? "",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorResource.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: ColorResource.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        Text(
                          "Nominal",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeightResource.medium,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            convertToIdr(
                              int.tryParse(nominal
                                      .map((e) => e.toString())
                                      .join("")) ??
                                  0,
                              0,
                            ),
                            style: GoogleFonts.poppins(
                              fontSize: 28.sp,
                              fontWeight: FontWeightResource.semiBold,
                              color: nominal.isEmpty
                                  ? ColorResource.black100.withOpacity(0.4)
                                  : ColorResource.black100,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Divider(
                          height: 1,
                          color: ColorResource.black100.withOpacity(0.4),
                        ),
                        LabeledTextField(
                          controller: noteController,
                          enabledColor: Colors.transparent,
                          color: Colors.transparent,
                          contentPadding: EdgeInsets.zero,
                          prefixIcon: Icon(
                            Icons.edit_note_outlined,
                            color: ColorResource.black100.withOpacity(0.6),
                          ),
                          hintText: "Note: ....",
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontStyle: FontStyle.italic,
                            color: ColorResource.black100.withOpacity(0.6),
                          ),
                          style: TextStyle(fontSize: 12.sp),
                          cursorColor: ColorResource.black100,
                          minLines: 1,
                          maxLines: 3,
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  AppNumberKeyboardWidget(
                    onNumberInput: (number) {
                      setState(() {
                        nominal.add(number);
                      });
                    },
                    onRemove: () {
                      if (nominal.isNotEmpty) {
                        setState(() {
                          nominal.removeLast();
                        });
                      }
                    },
                    onNext: () {
                      if ((int.tryParse(nominal.join("")) ?? 0) < 10000) {
                        showSnackBar(
                          context,
                          "Minimum transfer amount is Rp 10.000",
                        );
                      } else {
                        final recipient = RecipientPayloadItemModel(
                          bankCode: widget.bankData.bankCode ?? "",
                          amount: int.tryParse(nominal.join("")) ?? 0,
                          accountNumber: widget.recipient.number ?? "",
                          note: noteController.text.isNotEmpty
                              ? noteController.text.trim()
                              : null,
                          recipientName: widget.recipient.name,
                        );
                        if (widget.isAddDestination) {
                          Navigator.pop(context, recipient);
                        } else {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return MultiTransferDetailPage(
                                  firstRecipient: recipient,
                                );
                              },
                            ),
                          );
                        }
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
