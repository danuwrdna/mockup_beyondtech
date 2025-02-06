import 'package:bpay_mobile/src/auth_login/views/login_page.dart';
import 'package:bpay_mobile/src/auth_register/create_account/views/create_account_page.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_1/views/step_1_camera_view_page.dart';
import 'package:bpay_mobile/src/navigation/views/navigation.dart';
import 'package:bpay_mobile/src/navigation_home/views/home_page.dart';
import 'package:bpay_mobile/src/splash/cubit/splash_cubit.dart';
import 'package:bpay_mobile/gen/assets.gen.dart';
import 'package:bpay_mobile/src/boarding/views/boarding_page.dart';
import 'package:bpay_mobile/src/auth_register_check/views/sign_check_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: (isBoarded, isLogin) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) {
                  // if (isLogin) {
                  //   return const Navigation();
                  // } else if (isBoarded) {
                  //   return const SignCheckPage();
                  // } else {
                  //   return const BoardingPage();
                  // }\

                  if (isLogin) {
                    return const Navigation();
                  } else if (isBoarded) {
                    return const SignCheckPage();
                  } else {
                    return const BoardingPage();
                  }
                }),
                (route) => false,
              );
            },
          );
        },
        child: Center(
          child: Assets.icons.icLogo.image(width: 60.w, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
