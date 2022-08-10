import 'package:flutter/material.dart';
import 'package:shagher/packages/components/nav_bar/nav_bar.dart';
import 'package:shagher/packages/pages/home/components/app_bar_home.dart';
import 'package:shagher/packages/pages/traing/views/body.dart';
import '../components/drawer/body_drawer.dart';

class HomeWidget extends StatefulWidget {
  static const String id = "HomeWidget";
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _selectedIndex = 1;
  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Index 0: Home')),
    Center(child: Text('Index 1: Business')),
    TrainingWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: _widgetOptions[_selectedIndex],
      drawer: const BodyDrawer(),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onClick: (calledIndex) {
          setState(() {
            _selectedIndex = calledIndex;
          });
        },
      ),
    );
  }
}
        //onTap: _onItemTapped,
        //currentIndex: _selectedIndex,
        