import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/helper/route_helper.dart';
import 'package:project_structure_and_packages/util/app_constants.dart';
import 'package:project_structure_and_packages/view/screens/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConstants.APPLICATION_NANE,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRight,
      transitionDuration: const Duration(microseconds: 300),
      home: const SplashScreen(),
      getPages: RouteHelper.routes,
    );
  }
}