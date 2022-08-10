import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
//import 'package:shagher/service/restart/restart_app.dart';
import 'package:shagher/util/my_app.dart';
import 'language/config/config_language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        ConfigLanguage.arLocale,
        ConfigLanguage.enLocale,
      ],
      path: ConfigLanguage.langPath,
      fallbackLocale: ConfigLanguage.enLocale,
      child: const MyApp(),
    ),
  );
}

//todo upload apptheme and basic config file