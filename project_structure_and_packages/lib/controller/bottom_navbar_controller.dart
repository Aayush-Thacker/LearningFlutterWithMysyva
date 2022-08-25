import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  var selectedIndex = 1.obs;

  changeIndex(int newIndex) {
    selectedIndex.value = newIndex;
  }
}
