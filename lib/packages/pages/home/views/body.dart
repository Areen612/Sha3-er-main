import 'package:flutter/material.dart';
import 'package:shagher/packages/components/nav_bar/nav_bar.dart';
import 'package:shagher/packages/pages/Posts/job/body.dart';
import 'package:shagher/packages/pages/Posts/traing/views/body.dart';
import 'package:shagher/packages/pages/home/components/app_bar_home.dart';
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
    JobsWidget(),
    Center(child: Text('Index 0: Home')),
    TrainingWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: _widgetOptions[_selectedIndex],
      drawer: const DrawerBody(),
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

  // getAppBar() =>
  //     _selectedIndex == 2 ? const AppBarTraining() : const AppBarHome();
}
        //onTap: _onItemTapped,
        //currentIndex: _selectedIndex,
        