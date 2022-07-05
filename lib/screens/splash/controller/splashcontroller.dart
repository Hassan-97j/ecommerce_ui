import 'package:ecommerce_ui/themes/forlightmode/lighttextsyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: LightTextStyle.kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Theme.of(Get.context!).primaryColor
            : Theme.of(Get.context!).primaryColorLight, 
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  onpagechange(value) {
    currentPage = value;
    update();
  }
}
