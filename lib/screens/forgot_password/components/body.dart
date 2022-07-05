// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:ecommerce_ui/screens/forgot_password/components/forgotpassform.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget with BaseController {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                ConstantStrings.forgotpassword,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Theme.of(context).primaryColorDark,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ConstantStrings.pleaseenterEmail,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}
