import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/view/home/home_body.dart';
import 'package:project_structure_and_packages/view/sharedpreferences/shared_preferences_view.dart';
import 'package:project_structure_and_packages/view/urllauncher/url_launcher_view.dart';

class HomeController extends GetxController {
  Widget getView(int index) {
    if (index == 0) {
      return const UrlLauncherView();
    } else if (index == 1) {
      return const HomeBody();
    } else {
      return const SharedPreferencesView();
    }
  }
}
