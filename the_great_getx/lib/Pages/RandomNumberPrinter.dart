import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RandomNumberPrinter extends StatelessWidget {
  const RandomNumberPrinter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Get.parameters['number'] ?? 'Number not received via GetX'),
      ),
    );
  }
}
