import 'package:ecommerce_ui/routes/routes.dart';
import 'package:ecommerce_ui/themes/customtheme.dart/mythemes.dart';
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
      themeMode: ThemeMode.dark,
      theme: MyTheme().lightTheme,
      darkTheme: MyTheme().darkTheme, //theme(),
      // We use routeName so that we dont need to remember the name
      initialRoute: '/splashScreen',
      getPages: appRoutes(),
      // initialRoute: SplashScreen.routeName,
      // routes: routes,
    );
  }
}
