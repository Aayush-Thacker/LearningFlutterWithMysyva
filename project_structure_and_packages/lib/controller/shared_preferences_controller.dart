import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesController extends GetxController {
  Future<List<String>?> getAllNames() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList("Names");
  }

  void setName(String value) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? oldList = await getAllNames();
    if (oldList == null) {
      oldList = [value];
    } else {
      oldList.add(value);
    }
    prefs.setStringList("Names", oldList);
  }
}
