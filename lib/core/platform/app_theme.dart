import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const accent = Color(0xff00AAAA);
  static const primaryColor = Color(0xffaa7003);
  static const grey = Color(0xff6D7890);
  static const greyDark = Color(0xff303F4C);
  static const error = Color(0xffFF5E5E);
  static const success = Color(0xff35CF4E);
  static const background = Color(0xffFFF9F2);
  static const fontColor = Colors.black;
}

final ThemeData appThemeLight = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: const Color(0xfffeffff),
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    primaryColorBrightness: Brightness.dark,
    accentColor: AppColors.accent,
    accentColorBrightness: Brightness.dark,
    bottomAppBarColor: const Color(0xffffffff),
    cardColor: const Color(0xffffffff),
    dividerColor: AppColors.grey,
    highlightColor: AppColors.accent,
    splashColor: AppColors.accent,
    disabledColor: AppColors.grey,
    textSelectionColor: AppColors.accent,
    textSelectionHandleColor: AppColors.primaryColor,
    backgroundColor: AppColors.background,
    dialogBackgroundColor: AppColors.background,
    indicatorColor: AppColors.primaryColor,
    hintColor: AppColors.accent,
    errorColor: AppColors.error,
    fontFamily: GoogleFonts.play().fontFamily,
    textTheme: const TextTheme(
      headline4: TextStyle(
        fontSize: 24,
        color: AppColors.accent,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.1,
      ),
      headline5: TextStyle(
        // color: AppColors.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.05,
      ),
      bodyText2: TextStyle(
        color: AppColors.greyDark,
        fontSize: 14,
        height: 1.3,
      ),
    ));
