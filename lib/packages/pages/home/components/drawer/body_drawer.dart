import 'package:flutter/material.dart';
import 'package:shagher/packages/pages/home/components/drawer/header_drawer.dart';
import 'package:shagher/packages/pages/home/components/drawer/setting_drawer.dart';

class BodyDrawer extends StatelessWidget {
  const BodyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          // * Header
          HeaderDrawer(),

          // * Settings
          SettingsDrawer(),
        ],
      ),
    );
  }
}
