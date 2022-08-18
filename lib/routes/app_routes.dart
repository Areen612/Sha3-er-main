import 'package:flutter/cupertino.dart';
import 'package:shagher/packages/pages/auth/view/cv.dart';
import 'package:shagher/packages/pages/auth/view/forgot.dart';
import 'package:shagher/packages/pages/auth/view/login.dart';
import 'package:shagher/packages/pages/auth/view/register.dart';
import 'package:shagher/packages/pages/auth/view/wrapper.dart';
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
    LoginWidget.id: (context) => const LoginWidget(),
    RegisterWidget.id: (context) => const RegisterWidget(),
    ForgotPasswordWidget.id: (context) => const ForgotPasswordWidget(),
    //PageOrder.id: (context) => const PageOrder(),
    Wrapper.id: (context) => const Wrapper(),
    CvForm.id: (context) => const CvForm(),
  };
}

mixin PageOrder {}
