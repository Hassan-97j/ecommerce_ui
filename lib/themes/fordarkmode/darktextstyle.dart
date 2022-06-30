import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/themes/fordarkmode/darkcolors.dart';
import 'package:flutter/material.dart';

class DarkTextStyle {
  static TextStyle headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.white70,
    height: 1.5,
  );

  static Duration kAnimationDuration = const Duration(milliseconds: 200);
  static OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: DarkColors.kTextColor),
    gapPadding: 10,
  );
}
