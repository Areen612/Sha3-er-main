import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListTileDrawer extends StatelessWidget {
  const ListTileDrawer({
    Key? key,
    required String title,
    SvgPicture? icon,
    void Function()? onTap,
  })  : _title = title,
        _icon = icon,
        _onTap = onTap,
        super(key: key);

  final String _title;
  final SvgPicture? _icon;
  final void Function()? _onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_title.tr()),
      leading: _icon,
      onTap: _onTap,
    );
  }
}
