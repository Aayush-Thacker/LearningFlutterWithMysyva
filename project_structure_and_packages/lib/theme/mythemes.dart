import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.blue,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Colors.purple, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.red,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.pink, opacity: 0.8),
  );
}
