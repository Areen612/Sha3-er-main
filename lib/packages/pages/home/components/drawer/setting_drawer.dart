import 'package:flutter/material.dart';
import 'package:shagher/language/generated/key_lang.dart';
import 'package:shagher/packages/pages/home/components/drawer/lang/alert_lang.dart';
import 'package:shagher/packages/pages/home/components/drawer/listtile_drawer.dart';
import 'package:shagher/service/theme/app_theme.dart';
//import 'package:shagher/util/path_svg.dart';
import 'package:easy_localization/easy_localization.dart';

class SettingsDrawer extends StatelessWidget {
  const SettingsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // * User profile
        ListTileDrawer(
          title: KeyLang.userProfile.tr(),
        ),
        // * language
        ListTileDrawer(
          title: KeyLang.language.tr(),
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const AlertLang(),
            );
          },
        ),
        // * Themes
        ListTileDrawer(
          title: AppTheme.stateTheme(context),
        ),
        // * Terms and Conditions
        ListTileDrawer(
          title: KeyLang.termsAndConditions.tr(),
        ),
      ],
    );
  }
}
//icon: PathSvg.profileDarkIcon