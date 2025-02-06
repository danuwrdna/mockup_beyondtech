import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/navigation_home/blocs/balance/balance_bloc.dart';
import 'package:bpay_mobile/src/transfer_balance/detail/views/balance_transfer_detail_page.dart';
import 'package:bpay_mobile/widgets/app_number_keyboard_widget.dart';
import 'package:bpay_mobile/widgets/labeled_text_field.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:bpay_mobile/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class NominalPage extends StatefulWidget {
  const NominalPage({
    super.key,
    required this.recipient,
  });

  final RecipientData recipient;

  @override
  State<NominalPage> createState() => _NominalPageState();
}

class _NominalPageState extends State<NominalPage> {
  late String obscuredPhoneNumber;
  List<int> nominal = [];
  TextEditingController noteController = TextEditingController();

  // @override
  // void initState() {
  //   obscuredPhoneNumber =
  //       formatObscurePhoneNumber(widget.recipient.number ?? "");
  //   context.read<BalanceBloc>().add(const BalanceEvent.getBalance());
  //   super.initState();
  // }

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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    obscuredPhoneNumber,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorResource.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  // BlocBuilder<BalanceBloc, BalanceState>(
                  //   builder: (context, state) {
                  //     int currentBalance = 0;

                  //     return state.when(
                  //       initial: () => const CircularProgressIndicator(),
                  //       loading: () => const CircularProgressIndicator(),
                  //       success: (data) {
                  //         currentBalance =
                  //             int.tryParse(data.data?.data?.balance ?? "0") ??
                  //                 0;

                  //         return buildNominalInput(currentBalance);
                  //       },
                  //       failed: (message) =>
                  //           Text("Failed to load balance: $message"),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNominalInput(int currentBalance) {
    return Column(
      children: [
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
                    int.tryParse(nominal.map((e) => e.toString()).join("")) ??
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
            int joinedNominal =
                (int.tryParse(nominal.join().replaceAll(".", "")) ?? 0);

            if (joinedNominal < 10000) {
              showSnackBar(
                context,
                "Minimum transfer amount is Rp 10.000",
              );
            } else if (joinedNominal > currentBalance) {
              showSnackBar(
                context,
                "Your balance is insufficient. Your current balance is ${convertToIdr(currentBalance, 0)}. Please top up your balance before making a transfer.",
                duration: const Duration(seconds: 5),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BalanceTransferDetailPage(
                      recipient: widget.recipient,
                      phoneNumber: widget.recipient.number ?? "",
                      nominal: joinedNominal,
                      note: noteController.text,
                    );
                  },
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
