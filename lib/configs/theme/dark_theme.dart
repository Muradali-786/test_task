import 'package:flutter/material.dart';

import 'themes.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  appBarTheme: AppBarTheme(
    toolbarTextStyle: ThemeData.light().textTheme.displayMedium!.copyWith(
          // fontFamily: 'Montserrat', // Use Montserrat font
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
  textTheme: ThemeData.dark().textTheme.copyWith(
        titleMedium: const TextStyle(
          // fontFamily: 'Lato', // Use Lato font
          fontWeight: FontWeight.w500, // Adjust weight as needed
          color: Colors.white,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          color: Colors.white.withOpacity(.5),
        ),
        displayLarge: const TextStyle(
          // fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700, // Adjust weight as needed
          color: Colors.white,
        ),
        displayMedium: const TextStyle(
          // fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        headlineMedium: const TextStyle(
          // fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          color: ThemeConfig.textColor6B698E,
        ),
        displaySmall: const TextStyle(
          // fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        bodyMedium: const TextStyle(
          // fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
          color: ThemeConfig.textColorBCBFC2,
        ),
      ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateColor.resolveWith(
      (states) => Colors.white.withOpacity(.3),
    ),
  ),
  colorScheme: const ColorScheme.dark().copyWith(
    secondary: const Color(0xff73777a),
    primary: Colors.white,
    onPrimary: const Color(0xffA0A0A0),
    outline: Colors.black,
    onSurface: const Color(0xff202934),
    brightness: Brightness.dark,
    surface: const Color(0xff202934),
    primaryContainer: const Color(0xff2d3236),
    onPrimaryContainer: const Color(0xff5a5f62),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    linearTrackColor: Colors.white,
    color: ThemeConfig.primaryColor,
  ),
  primaryColor: ThemeConfig.primaryColor,
  scaffoldBackgroundColor: ThemeConfig.darkBackColor,
);
