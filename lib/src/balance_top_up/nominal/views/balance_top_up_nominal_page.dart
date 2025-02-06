import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
import 'package:bpay_mobile/src/balance_top_up/checkout/bloc/transaction_checkout_balance_bloc.dart';
import 'package:bpay_mobile/src/balance_top_up/review/views/balance_top_up_review_page.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/balance/balance_bloc.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/views/payment_method_bottom_sheet.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/formatters/currency_input_formatter.dart';
import 'package:flutter_multi_formatter/formatters/money_input_enums.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sizer/sizer.dart';

class BalanceTopUpNominalPage extends StatefulWidget {
  const BalanceTopUpNominalPage({
    super.key,
    this.bankData,
  });

  final DestinationBankItem? bankData;

  @override
  State<BalanceTopUpNominalPage> createState() =>
      _BalanceTopUpNominalPageState();
}

class _BalanceTopUpNominalPageState extends State<BalanceTopUpNominalPage> {
  String balanceNominal = "-";
  List<String> info = [
    "The maximum amount of balance that you can store is Rp20.000.000.",
    "The maximum accumulative amount of top up is Rp40.000.000 each month.",
  ];
  TextEditingController nominalController = TextEditingController();
  bool isBordered = false;
  String? errorMessage;

  PaymentMethodItem? chosenPaymentMethod;

  // @override
  // void initState() {
  //   super.initState();
  //   context.read<BalanceBloc>().add(const BalanceEvent.getBalance());
  // }

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardShown =
        MediaQuery.of(context).viewInsets.vertical > 0.0;
    if (isKeyboardShown != isBordered && nominalController.text.isEmpty) {
      setState(() => isBordered = isKeyboardShown);
    }
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 64,
          title: Text(
            "top up balance".capitalizeEach(),
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeightResource.semiBold,
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          shadowColor: ColorResource.black100.withOpacity(0.16),
          elevation: 4,
          surfaceTintColor: ColorResource.white,
        ),
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
        // body: BlocListener<TransactionCheckoutBalanceBloc,
        //     TransactionCheckoutBalanceState>(
        //   listener: (context, state) {
        //     state.when(
        //         initial: () {},
        //         loading: () {},
        //         success: (data) {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) {
        //                 return BalanceTopUpReviewPage(
        //                   paymentMethod: chosenPaymentMethod,
        //                   nominal: data.data?.nominal ?? 0,
        //                   adminFee: data.data?.totalFee ?? 0,
        //                 );
        //               },
        //             ),
        //           );
        //         },
        //         failed: (message) {
        //           showSnackBar(context, message);
        //         });
        //   },
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ColorResource.blue900,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Stack(
                  children: [
                    Assets.images.imgBgStarCluster.image(
                      width: 100.w,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Balance",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: ColorResource.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            balanceNominal,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeightResource.semiBold,
                              color: ColorResource.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "Nominal",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: nominalController,
                decoration: InputDecoration(
                  enabledBorder: !isBordered
                      ? OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: ColorResource.black100.withOpacity(0.32),
                          ),
                        )
                      : const UnderlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          ),
                          borderSide: BorderSide(color: ColorResource.blue900),
                        ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(color: ColorResource.error),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    borderSide: BorderSide(color: ColorResource.blue900),
                  ),
                  filled: isBordered,
                  fillColor: ColorResource.blue100,
                  error: errorMessage != null ? Container() : null,
                  contentPadding: const EdgeInsets.all(16),
                  hintText: "Rp 0",
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        if (!isKeyboardShown) {
                          isBordered = false;
                        }
                        nominalController.clear();
                      });
                    },
                    child: Icon(
                      Icons.cancel_outlined,
                      color: errorMessage != null
                          ? ColorResource.error
                          : isBordered
                              ? ColorResource.blue900
                              : ColorResource.black100.withOpacity(0.32),
                    ),
                  ),
                ),
                onTap: () => setState(() => isBordered = true),
                onChanged: (value) => setState(() => errorMessage = null),
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (nominalController.text.isEmpty) {
                    setState(() => isBordered = false);
                  }
                },
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeightResource.semiBold,
                ),
                inputFormatters: [
                  CurrencyInputFormatter(
                    leadingSymbol: "Rp ",
                    thousandSeparator: ThousandSeparator.Period,
                    mantissaLength: 0,
                  ),
                ],
                keyboardType: TextInputType.number,
              ),
              Visibility(
                visible: errorMessage != null,
                child: Column(
                  children: [
                    const SizedBox(height: 12),
                    Text(
                      errorMessage ?? "",
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeightResource.medium,
                        color: ColorResource.error,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: ColorResource.red.withOpacity(0.12),
                  border:
                      Border.all(color: ColorResource.red.withOpacity(0.16)),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: info.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("\u2022", style: TextStyle(fontSize: 11.sp)),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                info[index],
                                style: TextStyle(fontSize: 11.sp),
                              ),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: index != info.length - 1,
                          child: const SizedBox(height: 8),
                        )
                      ],
                    );
                  },
                ),
              ),
              const Spacer(),
              Center(child: Assets.icons.icLogo.image(height: 24)),
              const SizedBox(height: 28),
            ],
          ),
        ),
        bottomNavigationBar: Visibility(
            visible: nominalController.text.isNotEmpty,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
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
                child: AppFilledButton(
                  text: "choose payment method".capitalizeEach(),
                  onPressed: () {
                    int nominal = int.tryParse(nominalController.text
                            .replaceAll(RegExp(r'[^0-9]'), '')) ??
                        0;

                    int currentBalance = int.tryParse(
                            balanceNominal.replaceAll(RegExp(r'[^0-9]'), '')) ??
                        0;

                    // if (nominal < 10000) {
                    //   setState(() {
                    //     errorMessage = "Minimum Rp 10.000";
                    //     isBordered = false;
                    //   });
                    // } else if (nominal + currentBalance > 20000000) {
                    //   setState(() {
                    //     errorMessage =
                    //         "The maximum balance limit is Rp 20.000.000. Please ensure your total balance does not exceed this amount.";
                    //     isBordered = false;
                    //   });
                    // } else {
                    //   showModalBottomSheet(
                    //     isScrollControlled: true,
                    //     constraints: BoxConstraints.expand(height: 80.h),
                    //     showDragHandle: true,
                    //     context: context,
                    //     builder: (context) {
                    //       return PaymentMethodBottomSheet(
                    //         nominal: nominal,
                    //         isBalanceHidden: true,
                    //         onChoose: (chosenMethod) {
                    //           chosenPaymentMethod = chosenMethod;

                    //           context.read<TransactionCheckoutBalanceBloc>().add(
                    //                 TransactionCheckoutBalanceEvent
                    //                     .getTransactionCheckout(
                    //                   chosenMethod?.paymentCode ?? "",
                    //                   nominal,
                    //                 ),
                    //               );
                    //         },
                    //       );
                  },
                ))));
  }
}
