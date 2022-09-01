import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:multiple_language_with_getx/translation/language_data.dart';
import 'package:multiple_language_with_getx/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
      title: 'Flutter Language With GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
