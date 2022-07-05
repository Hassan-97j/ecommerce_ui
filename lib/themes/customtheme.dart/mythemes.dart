import 'package:ecommerce_ui/themes/fordarkmode/darkcolors.dart';
import 'package:ecommerce_ui/themes/fordarkmode/darktextstyle.dart';
import 'package:ecommerce_ui/themes/forlightmode/lightcolors.dart';
import 'package:ecommerce_ui/themes/forlightmode/lighttextsyle.dart';
import 'package:flutter/material.dart';

class MyTheme {
  ///////////////////////
  //////////////////////
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: LighColors.kPrimaryColor,
    primaryColorLight: LighColors.kPrimaryLightColor,
    primaryColorDark: DarkColors.kPrimaryDarkColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dialogTheme: DialogTheme(
//backgroundColor: Colors.white,
      contentTextStyle: TextStyle(
        color: LighColors.kPrimaryColor,
      ),
      alignment: Alignment.center,
      titleTextStyle: TextStyle(
        color: LighColors.kPrimaryColor,
      ),
    ),
    //appbar theme
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
    //text theme
    textTheme: TextTheme(
      bodyText1: TextStyle(color: LighColors.kTextColor),
      bodyText2: TextStyle(color: LighColors.kTextColor),
    ),
    //input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: LightTextStyle.outlineInputBorder,
      focusedBorder: LightTextStyle.outlineInputBorder,
      border: LightTextStyle.outlineInputBorder,
    ),
    //
  );
  /////////////////////
  ////////////////////
  ///////////////////
  //////////////////
  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: LighColors.kPrimaryColor,
    primaryColorDark: LighColors.kPrimaryLightColor,
    primaryColorLight: DarkColors.kPrimaryDarkColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dialogTheme: DialogTheme(
//backgroundColor: Colors.white,
      contentTextStyle: TextStyle(
        color: LighColors.kPrimaryColor,
      ),
      alignment: Alignment.center,
      titleTextStyle: TextStyle(
        color: LighColors.kPrimaryColor,
      ),
    ),
    //appbar theme
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle:
          TextStyle(color: Color.fromARGB(255, 230, 216, 216), fontSize: 18),
    ),
    //text theme
    textTheme: TextTheme(
      bodyText1: TextStyle(color: DarkColors.kTextColor),
      bodyText2: TextStyle(color: DarkColors.kTextColor),
    ),
    //input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: DarkTextStyle.outlineInputBorder,
      focusedBorder: LightTextStyle.outlineInputBorder,
      border: LightTextStyle.outlineInputBorder,
    ),
    //
  );
}
