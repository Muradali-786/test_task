import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'themes.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(
    systemOverlayStyle:
        SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
    foregroundColor: Colors.white,
    backgroundColor: ThemeConfig.primaryColor,
    elevation: 2,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  colorScheme: ThemeData.light().colorScheme.copyWith(
        secondary: Colors.white,
        primary: const Color(0xff2845d1),
        onPrimary: Colors.white,
        outline: Colors.white,
        onSurface: Colors.white,
        surface: Colors.white,
        primaryContainer: Colors.white,
        onPrimaryContainer: Colors.white,
      ),
  useMaterial3: false,
  textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
  scaffoldBackgroundColor: Colors.white,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    linearTrackColor: Color(0xffECEAEA),
    color: ThemeConfig.primaryColor,
  ),
  primaryColor: ThemeConfig.primaryColor,
  radioTheme: RadioThemeData(
    fillColor: WidgetStateColor.resolveWith(
      (states) => Colors.black.withOpacity(.4),
    ),
  ),
  textTheme: ThemeData.light().textTheme.copyWith(
        titleMedium: const TextStyle(
          // fontFamily: 'Montserrat', // Use your Montserrat font
          fontWeight:
              FontWeight.w600, // Adjust the weight according to your needs
          color: Colors.black,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Lato', // Use your Lato font
          fontWeight: FontWeight.w400,
          color: Colors.black.withOpacity(.5),
        ),
        displayLarge: const TextStyle(
          // fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        displayMedium: const TextStyle(
          // fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        headlineMedium: const TextStyle(
          // fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          color: ThemeConfig.textColor6B698E,
        ),
        displaySmall: const TextStyle(
          // fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        bodyMedium: const TextStyle(
          // fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
          color: ThemeConfig.textColorBCBFC2,
        ),
      ),
);
