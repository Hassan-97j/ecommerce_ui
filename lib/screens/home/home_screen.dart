// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/components/coustom_bottom_nav_bar.dart';
import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/screens/home/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/const/enums.dart';

import 'package:ecommerce_ui/screens/home/components/body.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget with BaseController {
  static String routeName = "/home";

  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (_) => const Scaffold(
        // appBar: AppBar(
        //   leading: Icon(
        //     Icons.arrow_back,
        //     color: Theme.of(context).scaffoldBackgroundColor,
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 25),
        //       child: PopupMenuButton(
        //         iconSize: 28,
        //         color: Theme.of(context).primaryColorLight,
        //         padding: EdgeInsets.zero,
        //         itemBuilder: (context) => [
        //           PopupMenuItem(
        //             child: RadioListTile(
        //                 activeColor: Colors.green,
        //                 title: const Text('LightTheme'),
        //                 value: 1,
        //                 groupValue: homeController.selectedRadio,
        //                 onChanged: (val) {
        //                   homeController
        //                       .setSelectedRadio(homeController.selectedRadio);
        //                 }),
        //           ),
        //           PopupMenuItem(
        //             child: RadioListTile(
        //                 activeColor: Colors.blue,
        //                 title: const Text('DarkTheme'),
        //                 value: 2,
        //                 groupValue: homeController.selectedRadio,
        //                 onChanged: homeController
        //                     .setSelectedRadio(homeController.selectedRadio)),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        body: Body(),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }
}
