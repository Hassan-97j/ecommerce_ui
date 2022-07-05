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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoppers Galleria',
      themeMode: ThemeService().theme,
      theme: MyTheme().lightTheme,
      darkTheme: MyTheme().darkTheme,
      initialRoute: '/splashScreen',
      getPages: appRoutes(),
    );
  }
}
