import 'package:get/get.dart';
import 'package:the_great_getx/ExtraClasses/HomeController.dart';
import 'package:the_great_getx/ExtraClasses/RandomNumbers.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => RandomNumbers());
  }
}
