import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertSnackbar extends StatelessWidget {
  const AlertSnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert and Snackbar of GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                  elevation: 2),
              onPressed: () => Get.defaultDialog(
                  title: Get.arguments['Message'] ?? 'Message not found.'),
              child: Text(
                'Default Alert Dialog',
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                  elevation: 2),
              onPressed: () => Get.snackbar(
                  'Snackbar', Get.arguments['Message'] ?? 'Message not found.',
                  snackPosition: SnackPosition.BOTTOM),
              child: Text(
                'Default Snackbar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
