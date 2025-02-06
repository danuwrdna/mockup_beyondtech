import 'package:bpay_mobile/src/navigation_notification/bloc/tnc/bloc/promo_detail_bloc.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:bpay_mobile/widgets/app_filled_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class InboxDetailPage extends StatefulWidget {
  const InboxDetailPage({super.key, required this.promoUrl});

  final String promoUrl;

  @override
  State<InboxDetailPage> createState() => _InboxDetailPageState();
}

class _InboxDetailPageState extends State<InboxDetailPage> {

  @override
  void initState() {
    context
        .read<PromoDetailBloc>()
        .add(PromoDetailEvent.getPromoDetail(widget.promoUrl));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: ColorResource.blue850),
        ),
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,
              color: ColorResource.primary),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocBuilder<PromoDetailBloc, PromoDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const CircularProgressIndicator(),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (data) {
              final promoDetail = data.data?.data;

              final howToClaim =
                  promoDetail?.howToClaim?.replaceAll("\\n", "\n");

              final termsAndCondition =
                  promoDetail?.termAndCondition?.replaceAll("\\n", "\n");

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 24),
                          Text(
                            promoDetail?.title ?? "",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13.sp),
                          ),
                          Center(
                            child: CachedNetworkImage(
                              imageUrl: promoDetail?.banner ?? "",
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Text(
                              textAlign: TextAlign.justify,
                              promoDetail?.intro ?? "",
                              style: const TextStyle(
                                height: 2.0,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              textAlign: TextAlign.justify,
                              "How to Claim",
                              style: TextStyle(
                                height: 2.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: Text(
                              textAlign: TextAlign.justify,
                              howToClaim ?? "",
                              style: const TextStyle(
                                height: 2.0,
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              textAlign: TextAlign.justify,
                              "Terms and Conditions",
                              style: TextStyle(
                                height: 2.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              textAlign: TextAlign.justify,
                              termsAndCondition ?? "",
                              style: const TextStyle(height: 2.0),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 20),
                            child: Text(
                              textAlign: TextAlign.justify,
                              promoDetail?.conclusion ?? "",
                              style: const TextStyle(height: 2.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      decoration: const BoxDecoration(
                        color: ColorResource.blue300,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: SizedBox(
                              width: 100.w,
                              child: AppFilledButton(
                                onPressed: () {},
                                text: "Use the promo",
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            failed: (String message) => Center(
              child: Text("Failed to Load : $message"),
            ),
          );
        },
      ),
    );
  }
}
