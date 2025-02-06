import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AccountDestinationTypeBottomSheet extends StatefulWidget {
  const AccountDestinationTypeBottomSheet({super.key});

  @override
  State<AccountDestinationTypeBottomSheet> createState() =>
      _AccountDestinationTypeBottomSheetState();
}

class _AccountDestinationTypeBottomSheetState
    extends State<AccountDestinationTypeBottomSheet>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      animationController: AnimationController(vsync: this),
      onClosing: () {},
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Where Are You Transferring To",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 36),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return const RemittanceBankDetailsPage();
                        //     },
                        //   ),
                        // );
                      },
                      child: AspectRatio(
                        aspectRatio: 0.9,
                        child: CommonOutlinedContainer(
                          borderColor: ColorResource.black100.withOpacity(0.8),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 12,
                          ),
                          child: Column(
                            children: [
                              Assets.icons.icRemittanceBussiness.image(
                                scale: 2,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Business Account",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                  color: ColorResource.blue850,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Transfer money to company, institution, school, college, etc",
                                style: TextStyle(fontSize: 10.sp),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return const RemittanceBankDetailsPage();
                        //     },
                        //   ),
                        // );
                      },
                      child: AspectRatio(
                        aspectRatio: 0.9,
                        child: CommonOutlinedContainer(
                          borderColor: ColorResource.black100.withOpacity(0.8),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Assets.icons.icRemittancePersonal.image(scale: 2),
                              const SizedBox(height: 20),
                              Text(
                                "Personal Account",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                  color: ColorResource.blue850,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Transfer money to an individual",
                                style: TextStyle(fontSize: 10.sp),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
