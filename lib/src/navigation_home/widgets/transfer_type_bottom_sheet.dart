import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/user_validation/user_validation_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/destination/views/balance_destination_page.dart';
import 'package:bpay_mobile/src/transfer_single/destination/views/single_destination_page.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class TransferTypeBottomSheet extends StatefulWidget {
  const TransferTypeBottomSheet({super.key});

  @override
  State<TransferTypeBottomSheet> createState() =>
      _TransferTypeBottomSheetState();
}

class _TransferTypeBottomSheetState extends State<TransferTypeBottomSheet>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // return Scaffold();
    return BottomSheet(
      animationController: AnimationController(vsync: this),
      onClosing: () {},
      builder: (context) {
        // return BlocBuilder<UserValidationBloc, UserValidationState>(
        //   builder: (context, state) {
        //     return state.when(
        //       initial: () {
        //         return const SizedBox();
        //       },
        //       loading: () {
        //         return const Center(
        //           child: Padding(
        //             padding: EdgeInsets.symmetric(vertical: 48),
        //             child: Center(child: CustomLoadingWidget()),
        //           ),
        //         );
        //       },
        //       success: (data) {
        //         final userValidationType =
        //             verifyUserValidation(data.data?.data);
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "What transfer activities\ndo you need?".capitalizeEach(),
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeightResource.semiBold,
              ),
              textAlign: TextAlign.center,
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
                        // handleUserValidation(
                        //   context,
                        //   onActive: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const SingleDestinationPage();
                            },
                          ),
                        );
                      },
                      child: AspectRatio(
                        aspectRatio: 0.75,
                        child: CommonOutlinedContainer(
                          borderColor: ColorResource.black100.withOpacity(0.8),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 12,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: ColorResource.blue550.withOpacity(0.2),
                                ),
                                child: Center(
                                  child: Assets.icons.icBankTransfer2
                                      .image(scale: 4),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Transfer Bank Account",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                  color: ColorResource.blue850,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Transfer to Another Bank Account",
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
                        // handleUserValidation(
                        //   context,
                        //   onActive: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const BalanceDestinationPage();
                            },
                          ),
                        );
                        //   },
                        //   // userValidationType: userValidationType,
                        // );
                      },
                      child: AspectRatio(
                        aspectRatio: 0.75,
                        child: CommonOutlinedContainer(
                          borderColor: ColorResource.black100.withOpacity(0.8),
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: ColorResource.blue550.withOpacity(0.2),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                      Assets.icons.icBalanceOnBeyond),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Text(
                                "Balance on Beyond",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeightResource.semiBold,
                                  color: ColorResource.blue850,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 15),
                              Text(
                                "Transfer Balance to Fellow Beyond Accounts",
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
