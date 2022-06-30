import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/themes/forlightmode/lightcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LightTextStyle {
  static TextStyle headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Theme.of(Get.context!).primaryColorDark,
    height: 1.5,
  );

  static Duration kAnimationDuration = const Duration(milliseconds: 200);

  static OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: LighColors.kTextColor),
    gapPadding: 10,
  );
}
