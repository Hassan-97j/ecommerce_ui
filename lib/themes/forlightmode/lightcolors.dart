import 'package:flutter/material.dart';

class LighColors {
  static Color kPrimaryColor = const Color(0xFFFF7643);
  static Color kPrimaryLightColor = const Color(0xFFFFECDF);
  static LinearGradient kPrimaryGradientColor = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  );
  static Color kSecondaryColor = const Color(0xFF979797);
  static Color kTextColor = const Color(0xFF757575);
}
