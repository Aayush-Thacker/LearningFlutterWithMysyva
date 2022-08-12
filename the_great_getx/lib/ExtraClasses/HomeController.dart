import 'package:get/get.dart';

//replica of Statful Class but using GetXController for State Management
class HomeController extends GetxController {
  //creating an observable(.obs) varuble
  var btnclickcounter = 0.obs;
  var text = 'Your counter is: ';

  //default method of GetxController class to increment observable variables
  increment() {
    btnclickcounter.value++;
  }

  String printCounter() {
    return text + btnclickcounter.value.toString();
  }
}
