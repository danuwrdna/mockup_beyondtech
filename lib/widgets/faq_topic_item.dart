// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bpay_mobile/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class FaqTopicItem extends StatelessWidget {
  const FaqTopicItem({
    super.key,
    required this.label,
    this.dividerColor,
    this.onTap,
  });

  final String label;
  final Color? dividerColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEBEEFF),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    fontSize: 11.sp,
                    color: ColorResource.primary,
                  ),
                ),
              ),
              SizedBox(width: 30),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: ColorResource.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
