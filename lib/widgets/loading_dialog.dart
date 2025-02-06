import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/gen/locale_keys.g.dart';
import 'package:bpay_mobile/main.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_i18n/flutter_i18n.dart';

class LoadingDialog extends StatefulWidget {
  const LoadingDialog({
    super.key,
  });

  @override
  State<LoadingDialog> createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: PopScope(
        canPop: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                // FlutterI18n.translate(context, "wait_a_minute"),
                LocaleKeys.signCheckPage_wait_a_minute.tr(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeightResource.semiBold,
                ),
              ),
              const SizedBox(height: 24),
              RotationTransition(
                turns: Tween(begin: 1.0, end: 0.0).animate(animationController),
                child: Assets.images.imgLoading.image(width: 60, height: 60),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
