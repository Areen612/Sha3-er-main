import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:shagher/language/generated/key_lang.dart';
//import 'package:shagher/themes/app_colors.dart';

class AppTheme {
  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static String stateTheme(BuildContext context) =>
      AppTheme.isDark(context) ? KeyLang.darkMode : KeyLang.lightMode;
// * headline1
  static TextStyle h1(BuildContext context) =>
      Theme.of(context).textTheme.headline1 ?? const TextStyle();
// * headline2
  static TextStyle h2(BuildContext context) =>
      Theme.of(context).textTheme.headline2 ?? const TextStyle();
// * headline3
  static TextStyle h3(BuildContext context) =>
      Theme.of(context).textTheme.headline3 ?? const TextStyle();
// * headline4
  static TextStyle h4(BuildContext context) =>
      Theme.of(context).textTheme.headline4 ?? const TextStyle();
// * headline5
  static TextStyle h5(BuildContext context) =>
      Theme.of(context).textTheme.headline5 ?? const TextStyle();
// * headline6
  static TextStyle h6(BuildContext context) =>
      Theme.of(context).textTheme.headline6 ?? const TextStyle();
}

// // ?? check if null
// // ! can't be null