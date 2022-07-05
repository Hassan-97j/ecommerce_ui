// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/components/coustom_bottom_nav_bar.dart';
import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/screens/home/controller/homecontroller.dart';
import 'package:ecommerce_ui/themes/customtheme.dart/themeservice.dart';
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
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => SimpleDialog(
                        title: const Text('Select theme'),
                        children: [
                          SwitchListTile(
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            enableFeedback: false,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 12),
                            title: Text(
                              homeController.changetitle(),
                              // style: Get.theme.textTheme.titleSmall!.copyWith(
                              //   color: Get.theme.primaryColorLight,
                              // ),
                            ),
                            activeTrackColor: Colors.grey.withAlpha(125),
                            activeColor: Colors.grey.withAlpha(2),
                            inactiveTrackColor: Colors.grey,
                            inactiveThumbColor: Colors.grey.withAlpha(20),
                            secondary: homeController.changeIcon(),
                            onChanged: (value) {
                              homeController.onChanged(value);
                              ThemeService().switchTheme();
                              homeController.switchState();
                            },
                            value: homeController.switchChange,
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.more_vert)),
            )
          ],
        ),
        body: const Body(),
        bottomNavigationBar:
            const CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }
}
