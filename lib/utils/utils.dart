
import 'package:flutter/material.dart';


import '../configs/color/app_color.dart';

class Utils {

  static void onFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  // use package to show taost message package name tostification

  // static toastMessage(String message) {
  //   toastification.show(
  //     title: Text(
  //       message,
  //       style: const TextStyle(color: kWhite),
  //     ),
  //     type: ToastificationType.warning,
  //     style: ToastificationStyle.simple,
  //     autoCloseDuration: const Duration(seconds: 2),
  //     alignment: Alignment.bottomCenter,
  //     direction: TextDirection.ltr,
  //     backgroundColor: kDark,
  //     borderSide: const BorderSide(
  //       color: kDark,
  //     ),
  //   );
  // }
}
