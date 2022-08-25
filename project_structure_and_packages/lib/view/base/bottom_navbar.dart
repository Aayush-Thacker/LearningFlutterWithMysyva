import 'package:flutter/material.dart';
import 'package:project_structure_and_packages/controller/bottom_navbar_controller.dart';
import 'package:get/get.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    BottomNavbarController bottomNavbarController =
        Get.find<BottomNavbarController>();
    return SafeArea(
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          bottomNavbarController.changeIndex(value);
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.web), label: 'Url Launcher'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Shared Prefs')
        ],
      ),
    );
  }
}
