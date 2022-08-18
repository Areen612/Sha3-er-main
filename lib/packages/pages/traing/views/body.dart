import 'package:flutter/material.dart';
import 'package:shagher/packages/pages/home/components/drawer/body_drawer.dart';
//import 'package:shagher/packages/pages/home/components/app_bar_home.dart';
import 'package:shagher/packages/pages/traing/components/app_bar_training.dart';

class TrainingWidget extends StatefulWidget {
  static const String id = "TrainingWidget";
  const TrainingWidget({Key? key}) : super(key: key);

  @override
  State<TrainingWidget> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingWidget> {
  @override
  Widget build(BuildContext context) {
    final List<Container> _pages = [
      Container(
        color: Colors.amber,
      ),
      Container(
        color: Colors.blue,
      ),
      //PageSocial(),
      //PahrPremium(),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const AppBarTraining(),
        body: TabBarView(children: _pages),
        drawer: const DrawerBody(),
      ),
    );
  }
}
