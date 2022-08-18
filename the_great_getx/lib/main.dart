import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_great_getx/ExtraClasses/RandomNumbers.dart';
import 'package:the_great_getx/Pages/AlertSnackbar.dart';

import 'ExtraClasses/HomeBindings.dart';
import 'Pages/RandomNumberPrinter.dart';
import 'Pages/HomePage.dart';
import 'Pages/AlertSnackbar.dart';

void main() {
  HomeBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //GetMaterialApp to use GetX routes and argument passings
    return GetMaterialApp(
      title: 'GetX Practice',
      //initializing all the routes using GetX getPages property
      getPages: [
        //adding dependies using HomeBindings to all pages to access objects using
        //Get.find<ClassName>(); function
        GetPage(name: '/home', page: () => HomePage(), binding: HomeBindings()),
        //passing argument in the route itself 'number'
        GetPage(
          name: '/random/:number',
          page: () => RandomNumberPrinter(),
        ),
        GetPage(name: '/alert', page: () => AlertSnackbar())
      ],
      home: HomePage(),
    );
  }
}
