import 'dart:async';

import 'package:flutter/material.dart';

import '../../configs/routes/routes.dart';

class SplashServices {
  // this function move either to home or onboarding depends on condition
  void isLogin(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, RoutesName.home, (route) => false);
    });
  }
}
