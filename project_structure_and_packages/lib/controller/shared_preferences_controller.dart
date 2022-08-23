import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesController extends GetxController {
  Future<String> getStringValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    String value = prefs.getString(key) ?? "No Shared Preferences Value Found!";
    return value;
  }

  void setStringValue(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
    update();
  }
}
