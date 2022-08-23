import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/controller/bottom_navbar_controller.dart';
import 'package:project_structure_and_packages/util/app_constants.dart';
import 'package:project_structure_and_packages/controller/home_controller.dart';
import 'package:project_structure_and_packages/view/base/bottom_navbar.dart';
import 'package:project_structure_and_packages/view/base/change_theme_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    BottomNavbarController bottomNavbarController =
        Get.put(BottomNavbarController());
    return Scaffold(
      appBar: AppBar(
        actions: const [
          ChangeThemeButtonWidget(),
        ],
        title: const Text(AppConstants.APPLICATION_NANE),
      ),
      bottomNavigationBar: const BottomNavbar(),
      body: Obx(() =>
          homeController.getView(bottomNavbarController.selectedIndex.value)),
    );
  }
}
