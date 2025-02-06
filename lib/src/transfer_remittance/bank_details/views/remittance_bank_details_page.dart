import 'package:bpay_mobile/src/transfer_remittance/personal_details/views/remittance_personal_data_page.dart';
import 'package:bpay_mobile/widgets/app_dashed_line.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class RemittanceBankDetailsPage extends StatefulWidget {
  final Map<String, dynamic>? selectedService;
  final String destinationCountryCode;
  final int amount;

  const RemittanceBankDetailsPage({
    super.key,
    required this.selectedService,
    required this.destinationCountryCode,
    required this.amount,
  });

  @override
  State<RemittanceBankDetailsPage> createState() =>
      _RemittanceBankDetailsPageState();
}

class _RemittanceBankDetailsPageState extends State<RemittanceBankDetailsPage> {
  // Map untuk menyimpan controller secara dinamis
  Map<String, TextEditingController> controllers = {};

  @override
  void initState() {
    super.initState();
    // Inisialisasi controller untuk setiap field di selectedService
    for (var field in widget.selectedService!['fields']) {
      if (field['key'] != "targetAccount.bankName" &&
          field['key'].contains('sender.')) {
        controllers[field['key']] = TextEditingController();
      }
    }
  }

  @override
  void dispose() {
    // Membersihkan controller untuk mencegah kebocoran memori
    controllers.forEach((key, controller) => controller.dispose());
    super.dispose();
  }

  // Fungsi untuk memeriksa apakah semua controller sudah terisi
  bool areAllFieldsFilled() {
    return controllers.values.every((controller) => controller.text.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.remittance,
        toolbarHeight: 64,
        title: Text(
          "Recipient Data",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeightResource.semiBold,
            color: ColorResource.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorResource.white,
          ),
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                      color: ColorResource.darkRemittance,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeightResource.semiBold,
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    "Sender Details",
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: AppDashedLine(
                      height: 1,
                      dashWidth: 5,
                      color: ColorResource.black100.withOpacity(0.4),
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: ColorResource.black100.withOpacity(0.4),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeightResource.semiBold,
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: AppDashedLine(
                      height: 1,
                      dashWidth: 5,
                      color: ColorResource.black100.withOpacity(0.4),
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: ColorResource.black100.withOpacity(0.4),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeightResource.semiBold,
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CommonShadowedContainer(
              backgroundColor: ColorResource.white,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              radius: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Destination Detail",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),

                  // Untuk setiap field di selectedService, buat TextField atau widget lainnya
                  // Iterasi setiap field dari selectedService
                  for (var field in widget.selectedService!['fields']) ...[
                    // Pengecekan untuk mengecualikan field tertentu, misalnya "Bank Name"
                    if (field['key'] != "targetAccount.bankName" &&
                        field['key'].contains('sender.')) ...[
                      const SizedBox(height: 20),
                      Text(
                        field['field_label'] ?? "Field Label",
                        // Gunakan field_label sebagai label
                        style: TextStyle(fontSize: 11.sp),
                      ),
                      const SizedBox(height: 6),

                      // Gunakan TextField untuk setiap field
                      LabeledTextField(
                        controller: controllers[field['key']]!,
                        hintText: field['field_label'] ?? "Input here",
                        hintStyle: TextStyle(
                          fontSize: 11.sp,
                          fontStyle: FontStyle.italic,
                          color: ColorResource.black100.withOpacity(0.8),
                        ),
                        inputFormatters: [
                          if (field['regex'] != null &&
                              field['regex']!.isNotEmpty)
                            FilteringTextInputFormatter.allow(
                                RegExp(field['regex']))
                          else if (field['data_type'] == 'string')
                            FilteringTextInputFormatter.singleLineFormatter
                          else
                            FilteringTextInputFormatter.digitsOnly,
                        ],
                        keyboardType: field['data_type'] == 'string'
                            ? TextInputType.text
                            : TextInputType.number,
                        maxLength: field['field_max'] != null
                            ? int.parse(field['field_max'])
                            : null,
                        onChanged: (value) {
                          // Tetapkan nilai min default ke 1 jika field_min kosong atau null
                          int fieldMinLength = field['field_min'] != null &&
                                  field['field_min'].isNotEmpty
                              ? int.parse(field['field_min'])
                              : 1;

                          // Validasi apakah panjang input memenuhi syarat min dan max
                          if (value.length < fieldMinLength) {
                            print('Input is too short');
                          }

                          // Panggil setState untuk memeriksa apakah semua field sudah terisi
                          setState(() {});
                        },
                      ),
                    ]
                  ],
                ],
              ),
            ),
            Container(
              width: 100.w,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
              child: AppFilledButton(
                text: "Next",
                backgroundColor: ColorResource.remittance,
                radius: 8,
                onPressed: areAllFieldsFilled()
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return RemittancePersonalDataPage(
                                controllers: controllers,
                                selectedService: widget.selectedService,
                                destinationCountryCode:
                                    widget.destinationCountryCode,
                                amount: widget.amount,
                              );
                            },
                          ),
                        );
                      }
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
