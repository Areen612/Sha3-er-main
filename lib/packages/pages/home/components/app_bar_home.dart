import 'dart:convert';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shagher/service/lang/app_lang.dart';
import 'package:shagher/util/path_images.dart';
import 'package:shagher/util/path_svg.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          iconSize: 30,
          padding: AppLang.currentLang(context) == 'en'
              ? const EdgeInsets.only(right: 20)
              : const EdgeInsets.only(left: 20),
          icon: Image.asset(PathImages.profileImage),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
