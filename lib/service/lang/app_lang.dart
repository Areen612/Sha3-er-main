import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class AppLang {
  static String currentLang(BuildContext context) =>
      EasyLocalization.of(context)?.currentLocale?.languageCode ?? 'en';
}
