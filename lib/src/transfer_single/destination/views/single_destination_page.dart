import 'package:bpay_mobile/services/models/profile_transaction/get_recipient_list_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/transfer_single/destination/bloc/recent_transaction/single_transfer_recent_transaction_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/destination/bloc/recipient_list/single_transfer_recipient_list_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/destination/bloc/remove_recipient/single_transfer_remove_recipient_bloc.dart';
import 'package:bpay_mobile/src/transfer_single/destination/views/single_transfer_destination_bottom_sheet.dart';
import 'package:bpay_mobile/src/transfer_single/nominal/views/single_transfer_nominal_page.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:bpay_mobile/widgets/common_shadowed_container.dart';
import 'package:bpay_mobile/widgets/confirmation_dialog.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class SingleDestinationPage extends StatefulWidget {
  const SingleDestinationPage({super.key});

  @override
  State<SingleDestinationPage> createState() => _SingleDestinationPageState();
}

class _SingleDestinationPageState extends State<SingleDestinationPage> {
  List<HistoryTransferSingleItem> filteredTransfer = [];
  List<RecipientListItem> recipients = [];
  List<RecipientListItem> filteredRecipients = [];
  int? tempRecipientIndex;

  // @override
  // void initState() {
  //   context.read<SingleTransferRecentTransactionBloc>().add(
  //       const SingleTransferRecentTransactionEvent.getSingleTransferHistory());
  //   context
  //       .read<SingleTransferRecipientListBloc>()
  //       .add(const SingleTransferRecipientListEvent.getRecipientList());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResource.blue850,
        toolbarHeight: 64,
        title: Text(
          "transfer to bank account".capitalizeEach(),
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
      // body: MultiBlocListener(
      //   listeners: [
      //     BlocListener<SingleTransferRecentTransactionBloc,
      //         SingleTransferRecentTransactionState>(
      //       listener: (context, state) {
      //         state.when(
      //           initial: () {},
      //           loading: () {},
      //           success: (data) {
      //             setState(() {
      //               filteredTransfer.clear();
      //               filteredTransfer.addAll(
      //                 data.data
      //                         ?.where((element) =>
      //                             element.transactionType?.toLowerCase() ==
      //                                 TransactionType.transferBank.value &&
      //                             element.recepients?.length == 1)
      //                         .take(3) ??
      //                     [],
      //               );
      //             });
      //           },
      //           failed: (message) {
      //             if (kDebugMode) print(message);
      //           },
      //         );
      //       },
      //     ),
      //     BlocListener<SingleTransferRecipientListBloc,
      //         SingleTransferRecipientListState>(
      //       listener: (context, state) {
      //         state.when(
      //           initial: () {},
      //           loading: () {},
      //           success: (data) {
      //             setState(() {
      //               recipients.clear();
      //               recipients.addAll(data.data?.data?.where((element) =>
      //                       element.transferType ==
      //                       TransactionType.transferBank.value) ??
      //                   []);
      //               filteredRecipients.clear();
      //               filteredRecipients.addAll(recipients);
      //             });
      //           },
      //           failed: (message) {
      //             if (kDebugMode) print(message);
      //           },
      //         );
      //       },
      //     ),
      //     BlocListener<SingleTransferRemoveRecipientBloc,
      //         SingleTransferRemoveRecipientState>(
      //       listener: (context, state) {
      //         state.when(
      //           initial: () {},
      //           loading: () {},
      //           success: (data) {
      //             setState(() {
      //               if (tempRecipientIndex != null) {
      //                 filteredRecipients.removeAt(tempRecipientIndex!);
      //               }
      //               tempRecipientIndex = null;
      //             });
      //           },
      //           failed: (message) {
      //             setState(() => tempRecipientIndex = null);
      //             if (kDebugMode) print(message);
      //           },
      //         );
      //       },
      //     ),
      //   ],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (filteredTransfer.isNotEmpty) ...[
                  Text(
                    "Recent Transaction",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeightResource.semiBold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: filteredTransfer.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              final recipientData = RecipientData(
                                name: filteredTransfer[index]
                                    .recepients?[0]
                                    .accountName,
                                number: filteredTransfer[index]
                                    .recepients?[0]
                                    .accountCode,
                              );
                              final bankData = DestinationBankItem(
                                bankCode: filteredTransfer[index]
                                    .recepients?[0]
                                    .bankCode,
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SingleTransferNominalPage(
                                      recipient: recipientData,
                                      bankData: bankData,
                                    );
                                  },
                                ),
                              );
                            },
                            child: CommonShadowedContainer(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 12,
                              ),
                              radius: 8,
                              backgroundColor: ColorResource.white,
                              child: Row(
                                children: [
                                  Container(
                                    height: 36,
                                    width: 36,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorResource.red,
                                    ),
                                    child: Center(
                                      child: Text(
                                        createInitial(
                                              filteredTransfer[index]
                                                  .recepients
                                                  ?.firstOrNull
                                                  ?.accountName,
                                            ) ??
                                            "",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                          color: ColorResource.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          filteredTransfer[index]
                                                  .recepients
                                                  ?.firstOrNull
                                                  ?.accountName ??
                                              "",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight:
                                                FontWeightResource.semiBold,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          filteredTransfer[index]
                                                  .recepients
                                                  ?.firstOrNull
                                                  ?.accountCode ??
                                              "",
                                          style: TextStyle(
                                            fontSize: 11.sp,
                                            fontWeight:
                                                FontWeightResource.semiBold,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          DateFormat("dd MMM yyyy").format(
                                            DateTime.fromMillisecondsSinceEpoch(
                                                (filteredTransfer[index]
                                                            .createdAt ??
                                                        0) *
                                                    1000),
                                          ),
                                          style: TextStyle(fontSize: 10.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    convertToIdr(
                                        filteredTransfer[index]
                                                .recepients
                                                ?.firstOrNull
                                                ?.nominal ??
                                            0,
                                        0),
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeightResource.semiBold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          if (index < filteredTransfer.length - 1)
                            const SizedBox(height: 8),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                ],
                Text(
                  "Saved List",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeightResource.semiBold,
                  ),
                ),
                const SizedBox(height: 16),
                CommonShadowedContainer(
                  radius: 8,
                  height: 48,
                  backgroundColor: ColorResource.white,
                  child: OverflowBox(
                    alignment: Alignment.topCenter,
                    maxHeight: 64,
                    child: LabeledTextField(
                      enabledColor: Colors.transparent,
                      color: Colors.transparent,
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: const Icon(
                        Icons.search_outlined,
                        color: ColorResource.grey300,
                      ),
                      hintText: "Search Name or Bank here",
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontStyle: FontStyle.italic,
                        color: ColorResource.grey300,
                      ),
                      style: TextStyle(fontSize: 12.sp),
                      cursorColor: ColorResource.black100,
                      onChanged: (value) {
                        setState(() {
                          if (value.isNotEmpty) {
                            filteredRecipients.clear();
                            filteredRecipients.addAll(
                              recipients.where(
                                (e) =>
                                    (e.recipientName ?? "")
                                        .toLowerCase()
                                        .contains(value.toLowerCase()) ||
                                    (e.bank?.code ?? "")
                                        .toLowerCase()
                                        .contains(value.toLowerCase()),
                              ),
                            );
                          } else {
                            filteredRecipients.clear();
                            filteredRecipients.addAll(recipients);
                          }
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filteredRecipients.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            final recipientData = RecipientData(
                              name: filteredRecipients[index].recipientName,
                              number: filteredRecipients[index].bank?.number,
                            );
                            final bankData = DestinationBankItem(
                              bankCode: filteredRecipients[index].bank?.code,
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SingleTransferNominalPage(
                                    recipient: recipientData,
                                    bankData: bankData,
                                  );
                                },
                              ),
                            );
                          },
                          child: CommonShadowedContainer(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                            radius: 8,
                            backgroundColor: ColorResource.white,
                            child: Row(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorResource.red,
                                  ),
                                  child: Center(
                                    child: Text(
                                      createInitial(
                                            filteredRecipients[index]
                                                .recipientName,
                                          ) ??
                                          "",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeightResource.semiBold,
                                        color: ColorResource.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        filteredRecipients[index]
                                                .recipientName ??
                                            "",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        filteredRecipients[index]
                                                .bank
                                                ?.number ??
                                            "",
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight:
                                              FontWeightResource.semiBold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return ConfirmationDialog(
                                          message:
                                              "Are you sure you want to remove this recipient?",
                                          primaryButtonText: "No",
                                          primaryButtonPressed: () {
                                            Navigator.pop(context);
                                          },
                                          secondaryButtonText: "Yes",
                                          secondaryButtonPressed: () {
                                            // Navigator.pop(context);
                                            // context
                                            //     .read<
                                            //         SingleTransferRemoveRecipientBloc>()
                                            //     .add(
                                            //         SingleTransferRemoveRecipientEvent
                                            //             .removeRecipient(
                                            //       filteredRecipients[index]
                                            //               .recipientId ??
                                            //           "",
                                            //     ));
                                            setState(
                                              () => tempRecipientIndex = index,
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.delete_outline_outlined,
                                    color: ColorResource.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (index < filteredRecipients.length - 1) ...[
                          const SizedBox(height: 8),
                        ]
                      ],
                    );
                  },
                ),
              ],
            ),
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
        child: AppFilledButton(
          text: "create new destination".capitalizeEach(),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const SingleTransferDestinationBottomSheet();
              },
            );
          },
          radius: 8,
        ),
      ),
    );
  }
}
