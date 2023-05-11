import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/features/bottomNavBar/view/screen/bottom_navbar_screen.dart';
import 'package:locally_app/features/login/view/screen/landing_screen.dart';
import 'package:locally_app/features/login/view/screen/location_screen.dart';
import 'package:locally_app/features/login/view/screen/login_screen.dart';
import 'package:locally_app/features/login/view/screen/number_screen.dart';
import 'package:locally_app/features/login/view/screen/otp_screen.dart';
import 'package:page_transition/page_transition.dart';


class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkUser();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          child: getHomeScreen(),
          duration: const Duration(milliseconds: 900),
        ),
      ),
    );
  }

  checkUser() async {
  
    // await ref.read(profileProvider).initializeProfileLookups();
  }

  Widget getHomeScreen() {
    // bool isLogin = ref.read(loginProvider).userIsLogin;
    bool isLogin =true;
    if (isLogin) {
      // return const LoginScreenUI();
      return const LandingScreen();
    } else {
      // return const LoginScreenUI();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Splash_img.png"), fit: BoxFit.fill),
      ),
    );
  }
}
