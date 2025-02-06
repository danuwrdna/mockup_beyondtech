import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/bloc/payment_method_bloc.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:bpay_mobile/src/transfer_single/detail/models/payment_method_enum.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_outlined_container.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class PaymentMethodBottomSheet extends StatefulWidget {
  const PaymentMethodBottomSheet({
    super.key,
    required this.onChoose,
    this.balanceColor,
    this.isBalanceHidden = false,
    required this.nominal,
  });

  final Function(PaymentMethodItem? chosenPaymentMethod) onChoose;
  final Color? balanceColor;
  final bool isBalanceHidden;
  final int nominal;

  @override
  State<PaymentMethodBottomSheet> createState() =>
      _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  TextEditingController filterController = TextEditingController();
  List<PaymentMethodItem> paymentMethodList = [];
  List<PaymentMethodItem> filteredPaymentMethodList = [];
  PaymentMethodItem? paymentMethod;
  bool showMoreBankTransfer = false;
  bool showMoreVirtualAccount = false;

  @override
  void initState() {
    context
        .read<PaymentMethodBloc>()
        .add(PaymentMethodEvent.getPaymentMethod(widget.nominal));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return BlocConsumer<PaymentMethodBloc, PaymentMethodState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {},
              success: (data) {
                paymentMethodList
                    .addAll(data.data.where((element) => element.isActive));
                filteredPaymentMethodList.addAll(paymentMethodList);
              },
              failed: (message) {
                Navigator.pop(context);
                if (kDebugMode) {
                  print(message);
                }
                showSnackBar(context, message);
              },
            );
          },
          builder: (context, state) {
            return state.when(
              initial: () {
                return const SizedBox();
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              success: (data) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabeledTextField(
                          controller: filterController,
                          enabledColor: ColorResource.grey500,
                          color: ColorResource.grey500,
                          contentPadding: const EdgeInsets.all(8),
                          prefixIcon: const Icon(
                            Icons.search_outlined,
                            color: ColorResource.grey300,
                          ),
                          hintText: "Search Bank or Other Transfer Methods",
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontStyle: FontStyle.italic,
                            color: ColorResource.grey300,
                          ),
                          style: TextStyle(fontSize: 12.sp),
                          onChanged: (value) {
                            setState(() {
                              if (value.isNotEmpty) {
                                filteredPaymentMethodList.clear();
                                filteredPaymentMethodList.addAll(
                                  paymentMethodList.where(
                                    (e) =>
                                        (e.paymentName)
                                            .toLowerCase()
                                            .contains(value.toLowerCase()) ||
                                        (e.paymentGroup)
                                            .toLowerCase()
                                            .contains(value.toLowerCase()),
                                  ),
                                );
                              } else {
                                filteredPaymentMethodList.clear();
                                filteredPaymentMethodList
                                    .addAll(paymentMethodList);
                              }
                            });
                          },
                        ),
                        if (filteredPaymentMethodList.where(
                              (e) {
                                return e.paymentGroup ==
                                    PaymentMethod.balance.label;
                              },
                            ).isNotEmpty &&
                            !widget.isBalanceHidden) ...[
                          const SizedBox(height: 28),
                          InkWell(
                            onTap: () {
                              setState(() {
                                paymentMethod = filteredPaymentMethodList.where(
                                  (e) {
                                    return e.paymentGroup ==
                                        PaymentMethod.balance.label;
                                  },
                                ).firstOrNull;
                              });
                            },
                            child: CommonOutlinedContainer(
                              padding: const EdgeInsets.all(16),
                              borderColor: ColorResource.grey500,
                              child: Row(
                                children: [
                                  // CachedNetworkImage(
                                  //   imageUrl: filteredPaymentMethodList
                                  //           .where(
                                  //             (e) =>
                                  //                 e.paymentGroup ==
                                  //                 PaymentMethod.balance.label,
                                  //           )
                                  //           .firstOrNull
                                  //           ?.iconUrl ??
                                  //       "",
                                  //   width: 32,
                                  //   color: widget.balanceColor ??
                                  //       ColorResource.blue850,
                                  // ),
                                  Assets.icons.icWalletFilled.image(
                                    scale: 1.5,
                                    color: widget.balanceColor ??
                                        ColorResource.blue850,
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Your Balance",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: widget.balanceColor ??
                                                ColorResource.blue850,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          convertToIdr(
                                            filteredPaymentMethodList
                                                    .where(
                                                      (e) {
                                                        return e.paymentGroup ==
                                                            PaymentMethod
                                                                .balance.label;
                                                      },
                                                    )
                                                    .firstOrNull
                                                    ?.userBalance ??
                                                0,
                                            0,
                                          ),
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight:
                                                FontWeightResource.semiBold,
                                            color: widget.balanceColor ??
                                                ColorResource.blue850,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Radio(
                                    value: filteredPaymentMethodList
                                        .where(
                                          (e) =>
                                              e.paymentGroup ==
                                              PaymentMethod.balance.label,
                                        )
                                        .firstOrNull,
                                    groupValue: paymentMethod,
                                    onChanged: (value) {
                                      setState(() {
                                        paymentMethod = value;
                                      });
                                    },
                                    activeColor: widget.balanceColor ??
                                        ColorResource.blue850,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                        if (filteredPaymentMethodList.where(
                          (e) {
                            return e.paymentGroup ==
                                PaymentMethod.bankTransfer.label;
                          },
                        ).isNotEmpty) ...[
                          const SizedBox(height: 28),
                          Text(
                            "Bank Transfer",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: showMoreBankTransfer
                                ? filteredPaymentMethodList
                                    .where(
                                      (e) =>
                                          e.paymentGroup ==
                                          PaymentMethod.bankTransfer.label,
                                    )
                                    .length
                                : filteredPaymentMethodList
                                            .where(
                                              (e) =>
                                                  e.paymentGroup ==
                                                  PaymentMethod
                                                      .bankTransfer.label,
                                            )
                                            .length <
                                        3
                                    ? filteredPaymentMethodList
                                        .where(
                                          (e) =>
                                              e.paymentGroup ==
                                              PaymentMethod.bankTransfer.label,
                                        )
                                        .length
                                    : 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        paymentMethod =
                                            filteredPaymentMethodList
                                                .where(
                                                  (e) =>
                                                      e.paymentGroup ==
                                                      PaymentMethod
                                                          .bankTransfer.label,
                                                )
                                                .toList()[index];
                                      });
                                    },
                                    child: CommonOutlinedContainer(
                                      borderColor: ColorResource.grey500,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                        horizontal: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CachedNetworkImage(
                                              imageUrl:
                                                  filteredPaymentMethodList
                                                      .where(
                                                        (e) =>
                                                            e.paymentGroup ==
                                                            PaymentMethod
                                                                .bankTransfer
                                                                .label,
                                                      )
                                                      .toList()[index]
                                                      .iconUrl),
                                          Radio(
                                            value: filteredPaymentMethodList
                                                .where(
                                                  (e) =>
                                                      e.paymentGroup ==
                                                      PaymentMethod
                                                          .bankTransfer.label,
                                                )
                                                .toList()[index],
                                            groupValue: paymentMethod,
                                            onChanged: (value) {
                                              setState(
                                                  () => paymentMethod = value);
                                            },
                                            activeColor: widget.balanceColor ??
                                                ColorResource.blue850,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: index <
                                        (showMoreBankTransfer
                                                ? filteredPaymentMethodList
                                                    .where(
                                                      (e) =>
                                                          e.paymentGroup ==
                                                          PaymentMethod
                                                              .bankTransfer
                                                              .label,
                                                    )
                                                    .length
                                                : 3) -
                                            1,
                                    child: const SizedBox(height: 12),
                                  )
                                ],
                              );
                            },
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  showMoreBankTransfer = !showMoreBankTransfer;
                                });
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(showMoreBankTransfer
                                      ? "- Less"
                                      : "+ More"),
                                  const SizedBox(width: 8),
                                  Icon(showMoreBankTransfer
                                      ? Icons.keyboard_arrow_up_outlined
                                      : Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ),
                        ],
                        if (filteredPaymentMethodList
                            .where(
                              (e) =>
                                  e.paymentGroup ==
                                  PaymentMethod.virtualAccount.label,
                            )
                            .isNotEmpty) ...[
                          const SizedBox(height: 28),
                          Text(
                            "Virtual Account",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeightResource.semiBold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: showMoreVirtualAccount
                                ? filteredPaymentMethodList
                                    .where(
                                      (e) =>
                                          e.paymentGroup ==
                                          PaymentMethod.virtualAccount.label,
                                    )
                                    .length
                                : filteredPaymentMethodList
                                            .where(
                                              (e) =>
                                                  e.paymentGroup ==
                                                  PaymentMethod
                                                      .virtualAccount.label,
                                            )
                                            .length <
                                        3
                                    ? filteredPaymentMethodList
                                        .where(
                                          (e) =>
                                              e.paymentGroup ==
                                              PaymentMethod
                                                  .virtualAccount.label,
                                        )
                                        .length
                                    : 3,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        paymentMethod =
                                            filteredPaymentMethodList
                                                .where(
                                                  (e) =>
                                                      e.paymentGroup ==
                                                      PaymentMethod
                                                          .virtualAccount.label,
                                                )
                                                .toList()[index];
                                      });
                                    },
                                    child: CommonOutlinedContainer(
                                      borderColor: ColorResource.grey500,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                        horizontal: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    CachedNetworkImage(
                                                      imageUrl:
                                                          filteredPaymentMethodList
                                                              .where(
                                                                (e) =>
                                                                    e.paymentGroup ==
                                                                    PaymentMethod
                                                                        .virtualAccount
                                                                        .label,
                                                              )
                                                              .toList()[index]
                                                              .iconUrl,
                                                      width: 64,
                                                      height: 42,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    const SizedBox(width: 16),
                                                    Expanded(
                                                      child: Text(
                                                        filteredPaymentMethodList
                                                            .where(
                                                              (e) =>
                                                                  e.paymentGroup ==
                                                                  PaymentMethod
                                                                      .virtualAccount
                                                                      .label,
                                                            )
                                                            .toList()[index]
                                                            .paymentName,
                                                        style: TextStyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeightResource
                                                                  .semiBold,
                                                          color: widget
                                                                  .balanceColor ??
                                                              ColorResource
                                                                  .blue850,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 8),
                                                Text.rich(
                                                  TextSpan(
                                                    text: "Admin Fee ",
                                                    children: [
                                                      TextSpan(
                                                        text: "(${convertToIdr(
                                                          filteredPaymentMethodList
                                                              .where(
                                                                (e) =>
                                                                    e.paymentGroup ==
                                                                    PaymentMethod
                                                                        .virtualAccount
                                                                        .label,
                                                              )
                                                              .toList()[index]
                                                              .totalFee,
                                                          0,
                                                        )})",
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeightResource
                                                                  .semiBold,
                                                          color: ColorResource
                                                              .black100,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  style: TextStyle(
                                                    fontSize: 10.sp,
                                                    color: ColorResource
                                                        .black100
                                                        .withOpacity(0.6),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Radio(
                                            value: filteredPaymentMethodList
                                                .where(
                                                  (e) =>
                                                      e.paymentGroup ==
                                                      PaymentMethod
                                                          .virtualAccount.label,
                                                )
                                                .toList()[index],
                                            groupValue: paymentMethod,
                                            onChanged: (value) {
                                              setState(() {
                                                paymentMethod = value;
                                              });
                                            },
                                            activeColor: widget.balanceColor ??
                                                ColorResource.blue850,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: index <
                                        (showMoreVirtualAccount
                                                ? filteredPaymentMethodList
                                                    .where(
                                                      (e) =>
                                                          e.paymentGroup ==
                                                          PaymentMethod
                                                              .virtualAccount
                                                              .label,
                                                    )
                                                    .length
                                                : filteredPaymentMethodList
                                                            .where(
                                                              (e) =>
                                                                  e.paymentGroup ==
                                                                  PaymentMethod
                                                                      .virtualAccount
                                                                      .label,
                                                            )
                                                            .length <
                                                        3
                                                    ? filteredPaymentMethodList
                                                        .where(
                                                          (e) =>
                                                              e.paymentGroup ==
                                                              PaymentMethod
                                                                  .virtualAccount
                                                                  .label,
                                                        )
                                                        .length
                                                    : 3) -
                                            1,
                                    child: const SizedBox(height: 12),
                                  )
                                ],
                              );
                            },
                          ),
                          const SizedBox(height: 20),
                          Visibility(
                            visible: filteredPaymentMethodList
                                    .where(
                                      (e) =>
                                          e.paymentGroup ==
                                          PaymentMethod.virtualAccount.label,
                                    )
                                    .length >
                                3,
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    showMoreVirtualAccount =
                                        !showMoreVirtualAccount;
                                  });
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(showMoreVirtualAccount
                                        ? "- Less"
                                        : "+ More"),
                                    const SizedBox(width: 8),
                                    Icon(showMoreVirtualAccount
                                        ? Icons.keyboard_arrow_up_outlined
                                        : Icons.keyboard_arrow_down_outlined),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                        if (filteredPaymentMethodList
                            .where(
                              (e) => e.paymentGroup == PaymentMethod.qris.label,
                            )
                            .isNotEmpty) ...[
                          const SizedBox(height: 28),
                          InkWell(
                            onTap: () {
                              setState(() {
                                paymentMethod = filteredPaymentMethodList
                                    .where(
                                      (e) =>
                                          e.paymentGroup ==
                                          PaymentMethod.qris.label,
                                    )
                                    .firstOrNull;
                              });
                            },
                            child: CommonOutlinedContainer(
                              padding: const EdgeInsets.all(16),
                              borderColor: ColorResource.grey500,
                              child: Row(
                                children: [
                                  // Assets.icons.icQris.image(scale: 2),
                                  CachedNetworkImage(
                                    imageUrl: filteredPaymentMethodList
                                            .where(
                                              (e) =>
                                                  e.paymentGroup ==
                                                  PaymentMethod.qris.label,
                                            )
                                            .firstOrNull
                                            ?.iconUrl ??
                                        "",
                                    width: 64,
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Text(
                                      filteredPaymentMethodList
                                              .where(
                                                (e) =>
                                                    e.paymentGroup ==
                                                    PaymentMethod.qris.label,
                                              )
                                              .firstOrNull
                                              ?.paymentName ??
                                          "",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                        color: widget.balanceColor ??
                                            ColorResource.blue850,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Radio(
                                    value: filteredPaymentMethodList
                                        .where(
                                          (e) =>
                                              e.paymentGroup ==
                                              PaymentMethod.qris.label,
                                        )
                                        .firstOrNull,
                                    groupValue: paymentMethod,
                                    onChanged: (value) {
                                      setState(() {
                                        paymentMethod = value;
                                      });
                                    },
                                    activeColor: widget.balanceColor ??
                                        ColorResource.blue850,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                        const SizedBox(height: 40),
                        SizedBox(
                          width: 100.w,
                          child: AppFilledButton(
                            text: "Choose",
                            onPressed: paymentMethod != null
                                ? () {
                                    Navigator.pop(context);
                                    widget.onChoose(paymentMethod);
                                  }
                                : null,
                            radius: 16,
                            backgroundColor:
                                widget.balanceColor ?? ColorResource.blue850,
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                );
              },
              failed: (message) {
                return Container();
              },
            );
          },
        );
      },
    );
  }
}
