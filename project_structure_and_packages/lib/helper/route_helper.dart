import 'package:get/get.dart';
import 'package:project_structure_and_packages/view/home/home.dart';

import '../view/screens/splash/splash.dart';

class RouteHelper{
  static const String initial = '/';
  static const String home = '/home';
  static const String splash = '/splash';

  static String getInitialRoute() => initial;
  static String getHomeRoute() => home;
  static String getSplashRoute() => splash;

  static List<GetPage> routes = [
    GetPage(name: home, page: ()=> const HomeScreen()),
    GetPage(name: splash, page: ()=> const SplashScreen()),
  ];

}