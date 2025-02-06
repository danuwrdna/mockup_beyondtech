import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BankTransferInstructionBottomSheet extends StatefulWidget {
  const BankTransferInstructionBottomSheet({
    super.key,
  });

  @override
  State<BankTransferInstructionBottomSheet> createState() =>
      _BankTransferInstructionBottomSheetState();
}

class _BankTransferInstructionBottomSheetState
    extends State<BankTransferInstructionBottomSheet>
    with TickerProviderStateMixin {
  bool showMBanking = false;
  List<String> mBankingInstructions = [
    'Buka Aplikasi BRImo',
    'Masukkan Username dan Password, lalu klik Login',
    'Pilih Transfer',
    'Pilih Tambah Daftar Baru',
    'Masukkan Nomor Rekening Beyond',
    'a.n. PT ABCD',
    'Klik Lanjutkan',
    'Masukkan Jumlah Transfer',
    'Klik Transfer',
    'Periksa kembali nomor rekening BRI tujuan, Nama Pemilik, dan Jumlah Transfer',
    'Klik Transfer',
    'Masukkan Pin BRImo',
    'Pastikan Transfernya Berhasil',
    'Kembali ke aplikasi (INI), lalu klik Saya Sudah Transfer',
  ];

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      animationController: AnimationController(vsync: this),
      onClosing: () {},
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How To Transfer",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close, size: 32),
                  ),
                ],
              ),
              const SizedBox(height: 36),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () => setState(
                          () => showMBanking = !showMBanking,
                        ),
                        child: CommonOutlinedContainer(
                          padding: const EdgeInsets.all(16),
                          radius: 8,
                          backgroundColor: ColorResource.white,
                          borderColor: ColorResource.black100.withOpacity(0.6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "M - Banking",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeightResource.medium,
                                ),
                              ),
                              Icon(
                                showMBanking
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                size: 32,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: showMBanking,
                        child: Container(
                          margin: const EdgeInsets.only(top: 8, bottom: 12),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorResource.black100.withOpacity(0.4),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: ListView.builder(
                            itemCount: mBankingInstructions.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "${index < 5 ? index + 1 : index == 5 ? "" : index}",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight:
                                                FontWeightResource.semiBold,
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        flex: 17,
                                        child: Text(
                                          mBankingInstructions[index],
                                          style: TextStyle(fontSize: 12.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (index == 4) ...[
                                    Row(
                                      children: [
                                        const Expanded(
                                          flex: 1,
                                          child: SizedBox(),
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          flex: 17,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                              top: 12,
                                              bottom: 8,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal: 12,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorResource.grey100,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "117601000304303",
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    fontWeight:
                                                        FontWeightResource
                                                            .semiBold,
                                                  ),
                                                ),
                                                CommonShadowedContainer(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 7,
                                                    horizontal: 17.5,
                                                  ),
                                                  backgroundColor:
                                                      ColorResource.red,
                                                  radius: 20,
                                                  child: Text(
                                                    "Copy",
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeightResource
                                                              .semiBold,
                                                      color:
                                                          ColorResource.white,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                  if (index < mBankingInstructions.length - 1 &&
                                      index != 4) ...[
                                    const SizedBox(height: 12),
                                  ]
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      CommonOutlinedContainer(
                        padding: const EdgeInsets.all(16),
                        radius: 8,
                        backgroundColor: ColorResource.white,
                        borderColor: ColorResource.black100.withOpacity(0.6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ATM",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeightResource.medium,
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down, size: 32),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      CommonOutlinedContainer(
                        padding: const EdgeInsets.all(16),
                        radius: 8,
                        backgroundColor: ColorResource.white,
                        borderColor: ColorResource.black100.withOpacity(0.6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Internet Banking",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeightResource.medium,
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down, size: 32),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      CommonOutlinedContainer(
                        padding: const EdgeInsets.all(16),
                        radius: 8,
                        backgroundColor: ColorResource.white,
                        borderColor: ColorResource.black100.withOpacity(0.6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "SMS Banking",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeightResource.medium,
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down, size: 32),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
