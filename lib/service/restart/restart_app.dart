//import 'dart:js';

import 'package:flutter/material.dart';

class RestartApp extends StatefulWidget {
  const RestartApp({Key? key, required Widget child})
      : _child = child,
        super(key: key);

  final Widget _child;
  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_ResartAppState>()!.restartApp();
  }

  @override
  State<RestartApp> createState() => _ResartAppState();
}

class _ResartAppState extends State<RestartApp> {
  Key _key = UniqueKey();
  void restartApp() {
    setState(() {
      _key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: _key,
      child: widget._child,
    );
  }
}
