import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_great_getx/ExtraClasses/HomeController.dart';
import 'package:the_great_getx/ExtraClasses/RandomNumbers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    final randomNumber = Get.find<RandomNumbers>();
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            homeController.increment();
          },
          child: Icon(Icons.plus_one)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(() => Text(
                '${homeController.text} ${homeController.btnclickcounter}')),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                  elevation: 2),
              onPressed: () =>
                  Get.toNamed('/random/${randomNumber.getNumber()}'),
              child: Text(
                'Print A Random Number',
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                  elevation: 2),
              onPressed: () => Get.toNamed('/alert', arguments: {
                'Message': 'Alert message passed using arguments.'
              }),
              child: Text(
                'See A different Page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
