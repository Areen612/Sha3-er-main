import 'package:flutter/material.dart';
import 'package:shagher/models/post.dart';
import 'package:shagher/packages/pages/home/components/drawer/body_drawer.dart';
//import 'package:shagher/packages/pages/home/components/app_bar_home.dart';
import 'package:shagher/packages/pages/traing/components/app_bar_training.dart';
import 'package:shagher/util/path_images.dart';

class TrainingWidget extends StatefulWidget {
  static const String id = "TrainingWidget";
  const TrainingWidget({
    Key? key,
    // required ModelPost postState,
  }) :
        //_postState = postState,
        super(key: key);

  @override
  State<TrainingWidget> createState() => _TrainingPageState();
  //final ModelPost _postState;
}

class _TrainingPageState extends State<TrainingWidget> {
  @override
  Widget build(BuildContext context) {
    final List<Container> _pages = [
      // * page
      Container(
        color: Colors.amber,
        child: Center(
            child: Card(
                child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Image(image: AssetImage(PathImages.profileImage)),
              title: Text('Company Name'),
              subtitle: Text('Post Title'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('view post'),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ))),
      ),
      // * page
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
