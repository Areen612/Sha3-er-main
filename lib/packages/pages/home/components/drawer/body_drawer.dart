import 'package:shagher/packages/pages/home/components/drawer/header_drawer.dart';
import 'package:shagher/service/theme/app_theme.dart';
import 'package:shagher/themes/change_theme.dart';
import 'package:shagher/util/path_svg.dart';

import '../../../auth/manage_state/auth_service.dart';

import '../../../../../language/generated/key_lang.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom_list_drawer.dart';
import 'lang/alert_lang.dart';

class DrawerBody extends StatefulWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  _DrawerBodyState createState() => _DrawerBodyState();
}

class _DrawerBodyState extends State<DrawerBody> {
  String _themeText = KeyLang.light;
  @override
  Widget build(BuildContext context) {
    // * Auth Provider
    // final AuthService _auth = Provider.of<AuthService>(context);
    //final ThemeChange _themeProvider = Provider.of<ThemeChange>(context);
    _themeText = AppTheme.isDark(context) ? KeyLang.dark : KeyLang.light;
    return Drawer(
      child: Column(
        children: [
          // * Header
          const HeaderDrawer(),
          //const Image(image: AssetImage(PathImage.logo)),
          // * User Profile
          CustomListDrawer(
            // icon: PathSvg.profileIcon,
            title: KeyLang.userProfile,
            onTap: () {},
          ),
          // * Translate
          CustomListDrawer(
            // icon: PathSvg.dTranslate,
            title: KeyLang.language,
            onTap: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => const AlertLang(),
              );
            },
          ),
          // * theme
          CustomListDrawer(
            //icon: PathSvg.dTheme,
            title: _themeText,
            onTap: () {},
            // iconTrailing: Switch(
            //   value: _themeProvider.isDark,
            //   onChanged: (value) async {
            //     _themeProvider.updateTheme = value;
            //     await AppTheme.setTheme(value: value);
            //   },
            // ),
            // iconTrailing: Switch(
            //   value: _theme.isDark,
            //   onChanged: (value) async {
            //     _theme.updateTheme = value;
            //     await AppTheme.setTheme(value: value);
            //     if (mounted) RestartWidget.restartApp(context);
            //   },
            // ),
          ),
          // * SignOut
          CustomListDrawer(
            //icon: PathSvg.dlogout,
            title: KeyLang.logout,
            onTap: () async {
              //_auth.signOut();
            },
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:shagher/packages/pages/home/components/drawer/header_drawer.dart';
// import 'package:shagher/packages/pages/home/components/drawer/setting_drawer.dart';

// class BodyDrawer extends StatelessWidget {
//   const BodyDrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: const [
//           // * Header
//           HeaderDrawer(),

//           // * Settings
//           SettingsDrawer(),
//         ],
//       ),
//     );
//   }
// }
