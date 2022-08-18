import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/util/app_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.APPLICATION_NANE)),
      body: Container(
        color: AppConstants.BACKGROUND_COLOR,
        child: const Center(
          child: Text(
            'A Well Organized Application Welcomes You...',
            style: TextStyle(color: AppConstants.FOREGROUND_COLOR),
          ),
        ),
      ),
    );
  }
}
