import 'package:ecommerce_ui/themes/fordarkmode/darkcolors.dart';
import 'package:ecommerce_ui/themes/fordarkmode/darktextstyle.dart';
import 'package:ecommerce_ui/themes/forlightmode/lightcolors.dart';
import 'package:ecommerce_ui/themes/forlightmode/lighttextsyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      contentTextStyle: GoogleFonts.varelaRound(
        color: LighColors.kPrimaryColor,
      ),
      alignment: Alignment.center,
      titleTextStyle: GoogleFonts.varelaRound(
        color: LighColors.kPrimaryColor,
      ),
    ),
    //appbar theme
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle:
          GoogleFonts.varelaRound(color: const Color(0XFF8B8B8B), fontSize: 18),
    ),
    //text theme
    textTheme: GoogleFonts.varelaRoundTextTheme(),

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
      contentTextStyle: GoogleFonts.varelaRound(
        color: LighColors.kPrimaryColor,
      ),
      alignment: Alignment.center,
      titleTextStyle: GoogleFonts.varelaRound(
        color: LighColors.kPrimaryColor,
      ),
    ),
    //appbar theme
    appBarTheme: AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: GoogleFonts.varelaRound(
          color: const Color.fromARGB(255, 230, 216, 216), fontSize: 18),
    ),
    //text theme
    textTheme: GoogleFonts.varelaRoundTextTheme(),

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
