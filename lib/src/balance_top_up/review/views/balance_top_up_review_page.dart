import 'package:bpay_mobile/src/balance_top_up/bloc/balance_top_up_bloc.dart';
import 'package:bpay_mobile/src/balance_top_up/review/views/balance_top_up_detail_page.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/balance/balance_bloc.dart';
import 'package:bpay_mobile/src/navigation_profile/bloc/profile/get_profile_bloc.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:bpay_mobile/widgets/start_end_text_row_widget.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sizer/sizer.dart';

class BalanceTopUpReviewPage extends StatefulWidget {
  const BalanceTopUpReviewPage({
    super.key,
    required this.paymentMethod,
    required this.nominal,
    required this.adminFee,
  });

  final PaymentMethodItem? paymentMethod;
  final int nominal;
  final num adminFee;

  @override
  State<BalanceTopUpReviewPage> createState() => _BalanceTopUpReviewPageState();
}

class _BalanceTopUpReviewPageState extends State<BalanceTopUpReviewPage> {
  String balanceNominal = "-";
  String? fullName;

  // @override
  // void initState() {
  //   super.initState();
  //   context.read<BalanceBloc>().add(const BalanceEvent.getBalance());
  //   context.read<GetProfileBloc>().add(const GetProfileEvent.getProfileData());
  // }

  @override
  Widget build(BuildContext context) {
    num totalPayment = widget.nominal + (widget.adminFee);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "transaction review".capitalizeEach(),
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
      backgroundColor: ColorResource.grey100,
      // body: BlocListener<BalanceBloc, BalanceState>(
      //   listener: (context, state) {
      //     state.when(
      //         initial: () {},
      //         loading: () {},
      //         success: (data) {
      //           setState(() {
      //             balanceNominal = convertToIdr(
      //               (int.tryParse(data.data?.data?.balance ?? "0") ?? 0),
      //               0,
      //             );
      //           });
      //         },
      //         failed: (message) {});
      //   },
      // body: BlocListener<GetProfileBloc, GetProfileState>(
      //   listener: (context, state) {
      //     state.when(
      //         initial: () {},
      //         loading: () {},
      //         success: (data) async {
      //           setState(() {
      //             fullName = data.getProfileData?.data?.name;
      //           });
      //         },
      //         failed: (message) {});
      //   },
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.fromLTRB(20, 12, 20, 24),
              decoration: BoxDecoration(
                color: ColorResource.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Balance ",
                      children: [
                        TextSpan(
                          text: "[$fullName]",
                          style: const TextStyle(
                            fontWeight: FontWeightResource.semiBold,
                          ),
                        )
                      ],
                    ),
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    balanceNominal,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeightResource.semiBold,
                      color: ColorResource.blue850,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Transaction Detail",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 20,
              ),
              color: ColorResource.white,
              child: Column(
                children: [
                  StartEndTextRowWidget(
                    startText: "Payment Method",
                    endText: (widget.paymentMethod?.paymentName ?? 'Unknown'),
                  ),
                  const SizedBox(height: 12),
                  StartEndTextRowWidget(
                    startText: "Top Up Nominal",
                    endText: convertToIdr(widget.nominal, 0),
                  ),
                  const SizedBox(height: 12),
                  StartEndTextRowWidget(
                    startText: "Admin Fee",
                    endText: convertToIdr(widget.adminFee, 0),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: ColorResource.red.withOpacity(0.24),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: StartEndTextRowWidget(
                      startText: "Total Payment",
                      endText: convertToIdr(totalPayment, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        decoration: BoxDecoration(
          color: ColorResource.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: ColorResource.black.withOpacity(0.13),
              offset: const Offset(0, -2),
            )
          ],
        ),
        // child: BlocListener<BalanceTopUpBloc, BalanceTopUpState>(
        //   listener: (context, state) {
        //     state.when(
        //       initial: () {},
        //       loading: () {},
        //       success: (data) {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) {
        //               return BalanceTopUpDetailPage(
        //                 balanceDetailData: data.data,
        //               );
        //             },
        //           ),
        //         );
        //       },
        //       failed: (message) => showSnackBar(context, message),
        //     );
        //   },
        child: AppFilledButton(
          text: "confirm".capitalizeEach(),
          // onPressed: widget.paymentMethod != null
          //     ? () {
          //         context.read<BalanceTopUpBloc>().add(
          //               BalanceTopUpEvent.getBalanceTopUp(
          //                 widget.nominal,
          //                 widget.paymentMethod!.paymentCode,
          //               ),
          //             );
          //       }
          //     : null,
          radius: 16,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
