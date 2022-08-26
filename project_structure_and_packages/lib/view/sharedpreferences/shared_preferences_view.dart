import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/controller/shared_preferences_controller.dart';
import 'package:project_structure_and_packages/helper/route_helper.dart';
import 'package:project_structure_and_packages/util/dimensions.dart';

class SharedPreferencesView extends StatefulWidget {
  const SharedPreferencesView({Key? key}) : super(key: key);

  @override
  State<SharedPreferencesView> createState() => _SharedPreferencesViewState();
}

class _SharedPreferencesViewState extends State<SharedPreferencesView> {
  SharedPreferencesController sharedPreferencesController =
      Get.put(SharedPreferencesController());
  List<String>? _allNames;

  @override
  void initState() {
    super.initState();
    _loadNames();
  }

  _loadNames() async {
    _allNames = await sharedPreferencesController.getAllNames();
    setState(() {
      _allNames = _allNames;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.NORMAL_PADDING),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.toNamed(RouteHelper.getSharedPreferencesAdder()),
          child: const Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: _allNames?.map((name) => nameCards(name)).toList() ??
                [const Text('No Names Yet Added.')],
          ),
        ),
      ),
    );
  }

  Widget nameCards(String name) {
    return Card(
      margin: const EdgeInsets.all(Dimensions.NORMAL_MARGIN),
      child: Text(
        name,
        textAlign: TextAlign.center,
      ),
    );
  }
}
