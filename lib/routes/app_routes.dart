import 'package:flutter/cupertino.dart';
import 'package:shagher/packages/pages/tour/views/body.dart';
import 'package:shagher/packages/pages/traing/views/body.dart';
import '../packages/pages/home/views/body.dart';
import '../packages/pages/splash/views/body.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    SplashWidget.id: (context) => const SplashWidget(),
    HomeWidget.id: (context) => const HomeWidget(),
    TrainingWidget.id: (context) => const TrainingWidget(),
    TourWidget.id: (context) => const TourWidget(),
  };
}
