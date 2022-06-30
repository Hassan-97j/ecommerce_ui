import 'package:flutter/material.dart';

class DarkColors {
  static Color kPrimaryColor = const Color(0xFFFF7643);
  static Color kPrimaryDarkColor = const Color(0xFF1F1B24);
  static LinearGradient kPrimaryGradientColor = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  );
  static Color kSecondaryColor = const Color(0xFF979797);
  static Color kTextColor = const Color.fromARGB(255, 201, 180, 180);
}
