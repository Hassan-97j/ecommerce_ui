import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:ecommerce_ui/routes/routes.dart';
import 'package:ecommerce_ui/themes/customtheme.dart/mythemes.dart';
import 'package:ecommerce_ui/themes/customtheme.dart/themeservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: ConstantStrings.shoppersGalleria,
      themeMode: ThemeService().theme,
      theme: MyTheme().lightTheme,
      darkTheme: MyTheme().darkTheme,
      initialRoute: PagesNames.splashscreen,
      getPages: appRoutes(),
    );
  }
}
