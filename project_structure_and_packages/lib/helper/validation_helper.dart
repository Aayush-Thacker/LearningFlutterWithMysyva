import 'package:flutter/material.dart';

class ValidationItem {
  final String? value;
  final String? error;

  ValidationItem(this.value, this.error);
}

class CustomValidation with ChangeNotifier {
  ValidationItem _name = ValidationItem(null, null);

  ValidationItem get name => _name;

  bool get isValid {
    if (_name.value != null) {
      return true;
    } else {
      return false;
    }
  }

  void changeName(String? value) {
    if (value != null) {
      if (value.length >= 3) {
        _name = ValidationItem(value, null);
      } else if (value.isEmpty || value == ' ') {
        _name = ValidationItem(null, "Name is required");
      } else {
        _name = ValidationItem(null, "Must be at least 3 characters");
      }
    } else {
      _name = ValidationItem(null, "Name is required");
    }
    notifyListeners();
  }
}
