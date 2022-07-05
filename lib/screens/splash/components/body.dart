// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:ecommerce_ui/screens/splash/components/splash_content.dart';
import 'package:ecommerce_ui/screens/splash/controller/splashcontroller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/components/default_button.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget with BaseController {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      initState: (_) {},
      builder: (_) => SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    splashController.onpagechange(value);
                  },
                  itemCount: splashController.splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashController.splashData[index]["image"],
                    text: splashController.splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashController.splashData.length,
                          (index) => splashController.buildDot(index: index),
                        ),
                      ),
                      const Spacer(flex: 3),
                      DefaultButton(
                        text: ConstantStrings.continuE,
                        press: () {
                          Get.toNamed(PagesNames.signinscreen);
                        },
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
