import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/controller/shared_preferences_controller.dart';
import 'package:project_structure_and_packages/helper/validation_helper.dart';
import 'package:provider/provider.dart';

class SharedPreferencesAdder extends StatefulWidget {
  const SharedPreferencesAdder({Key? key}) : super(key: key);

  @override
  State<SharedPreferencesAdder> createState() => _SharedPreferencesAdderState();
}

class _SharedPreferencesAdderState extends State<SharedPreferencesAdder> {
  SharedPreferencesController sharedPreferencesController =
      Get.put(SharedPreferencesController());
  @override
  Widget build(BuildContext context) {
    var validationHelper = Provider.of<CustomValidation>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Text Items to SP'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Name",
              errorText: validationHelper.name.error,
            ),
            onChanged: (String value) {
              validationHelper.changeName(value);
            },
          ),
          ElevatedButton(
            child: const Text('Add'),
            onPressed: () {
              if (!validationHelper.isValid) {
                Get.snackbar('Error', 'Please enter valid input.');
              } else {
                sharedPreferencesController
                    .setName(validationHelper.name.value ?? 'Empty');
                Get.snackbar('Data Added', 'Data Added Successfully.');
              }
            },
          )
        ],
      ),
    );
  }
}
