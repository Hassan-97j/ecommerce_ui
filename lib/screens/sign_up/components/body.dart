import 'package:ecommerce_ui/const/assetsname.dart';
import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/components/socal_card.dart';
import 'package:ecommerce_ui/const/size_config.dart';

import 'package:ecommerce_ui/screens/sign_up/components/sign_up_form.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget with BaseController {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text(
                  ConstantStrings.registeraccount,
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ConstantStrings.completeDetails,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Theme.of(context).primaryColorDark),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: AssetsName.googleicon,
                      press: () {},
                    ),
                    SocalCard(
                      icon: AssetsName.facebookicon,
                      press: () {},
                    ),
                    SocalCard(
                      icon: AssetsName.twittericon,
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  ConstantStrings.termsandConditions,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
