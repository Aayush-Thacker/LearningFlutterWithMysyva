import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_with_packages/model/on_boarding_model.dart';

class OnBoardingController extends GetxController {
  var selectedIndex = 0.obs;
  bool get isLastPage => selectedIndex.value == allPagesData.length - 1;
  bool get isFirstPage => selectedIndex.value == 0;
  var pageController = PageController();

  next() {
    if (isLastPage) {
      //TODO goto home page
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  previous() {
    if (!isFirstPage) {
      pageController.previousPage(
          duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnBoardingModel> allPagesData = [
    OnBoardingModel(
        imageasset: "assets/image0.jpg",
        title: "Welcome To Our App",
        subtitle: "This is first page..."),
    OnBoardingModel(
        imageasset: "assets/image1.jpg",
        title: "Team Work",
        subtitle: "This is second page..."),
    OnBoardingModel(
        imageasset: "assets/image2.jpg",
        title: "Connect To People",
        subtitle: "This is third page..."),
    OnBoardingModel(
        imageasset: "assets/image3.jpg",
        title: "Go See The Application For Yourself",
        subtitle: "This is forth page..."),
  ];
}
