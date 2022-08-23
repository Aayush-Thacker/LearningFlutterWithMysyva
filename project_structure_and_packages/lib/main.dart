import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/helper/route_helper.dart';
import 'package:project_structure_and_packages/util/app_constants.dart';
import 'package:project_structure_and_packages/view/screens/splash/splash.dart';
import 'package:project_structure_and_packages/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:project_structure_and_packages/theme/mythemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return GetMaterialApp(
            title: AppConstants.APPLICATION_NANE,
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            defaultTransition: Transition.leftToRight,
            transitionDuration: const Duration(microseconds: 300),
            home: const SplashScreen(),
            getPages: RouteHelper.routes,
          );
        },
      );
}
