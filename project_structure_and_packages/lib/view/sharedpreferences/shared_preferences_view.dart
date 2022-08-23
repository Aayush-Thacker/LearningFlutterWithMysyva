import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/controller/shared_preferences_controller.dart';
import 'package:project_structure_and_packages/util/dimensions.dart';

class SharedPreferencesView extends StatefulWidget {
  const SharedPreferencesView({Key? key}) : super(key: key);

  @override
  State<SharedPreferencesView> createState() => _SharedPreferencesViewState();
}

class _SharedPreferencesViewState extends State<SharedPreferencesView> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SharedPreferencesController sharedPreferencesController =
        Get.put(SharedPreferencesController());
    return Padding(
      padding: const EdgeInsets.all(Dimensions.NORMAL_PADDING),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
              ),
            ),
            TextButton(
              onPressed: () => sharedPreferencesController.setStringValue(
                  "Name", nameController.text),
              child: const Text("Set To Shared Preferences"),
            ),
            const Center(
              child:
                  Text("Value of the Shared Preferences will be printed here."),
            ),
          ],
        ),
      ),
    );
  }
}
