import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/controller/splash_controller.dart';
import 'package:project_structure_and_packages/helper/route_helper.dart';
import 'package:project_structure_and_packages/util/app_constants.dart';
import 'package:project_structure_and_packages/util/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  GetxController splashController = Get.put(SplashController());
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds:AppConstants.SPLASH_SCREEN_DURATION), (){Get.offNamed(RouteHelper.getHomeRoute());});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.BACKGROUND_COLOR,
      body: Center(child: Image.asset(Images.GIF_LOGO),),
    );
  }
}
