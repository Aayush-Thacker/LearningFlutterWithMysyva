import 'package:get/get.dart';
import 'package:project_structure_and_packages/view/home/home.dart';
import 'package:project_structure_and_packages/view/screens/login/login_screen.dart';
import 'package:project_structure_and_packages/view/screens/registration/signup_screen.dart';
import 'package:project_structure_and_packages/view/sharedpreferences/shared_preferences_adder.dart';
import 'package:project_structure_and_packages/view/sharedpreferences/shared_preferences_view.dart';
import 'package:project_structure_and_packages/view/screens/splash/splash.dart';
import 'package:project_structure_and_packages/view/urllauncher/url_launcher_view.dart';

class RouteHelper {
  static const String initial = '/';
  static const String home = '/home';
  static const String splash = '/splash';
  static const String sharedPreferencesView = '/spview';
  static const String sharedPreferencesAdder = '/spadder';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String urlLauncher = '/urllauncher';

  static String getInitialRoute() => initial;
  static String getHomeRoute() => home;
  static String getSplashRoute() => splash;
  static String getSharedPreferencesView() => sharedPreferencesView;
  static String getSharedPreferencesAdder() => sharedPreferencesAdder;
  static String getLoginRoute() => login;
  static String getSignupRoute() => signup;
  static String getUrlLauncherRoute() => urlLauncher;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(
        name: sharedPreferencesView, page: () => const SharedPreferencesView()),
    GetPage(
        name: sharedPreferencesAdder,
        page: () => const SharedPreferencesAdder()),
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: signup, page: () => const SignupScreen()),
    GetPage(name: urlLauncher, page: () => const UrlLauncherView()),
  ];
}
