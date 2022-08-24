import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/helper/route_helper.dart';
import 'package:project_structure_and_packages/helper/validation_helper.dart';
import 'package:project_structure_and_packages/util/app_constants.dart';
import 'package:project_structure_and_packages/view/screens/splash/splash.dart';
import 'package:project_structure_and_packages/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:project_structure_and_packages/theme/mythemes.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeProvider>(
            create: (_) => ThemeProvider(),
          ),
          ChangeNotifierProvider<CustomValidation>(
            create: (_) => CustomValidation(),
          ),
        ],
        builder: (context, _) {
          var themeProvider = Provider.of<ThemeProvider>(context);

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
