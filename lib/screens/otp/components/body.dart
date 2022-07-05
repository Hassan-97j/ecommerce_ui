import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:ecommerce_ui/themes/forlightmode/lightcolors.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/otp/components/otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                ConstantStrings.otpverfication,
                style: TextStyle(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(ConstantStrings.wesentto),
              buildTimer(),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {},
                child: Text(
                  ConstantStrings.resendotp,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).primaryColorDark),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(ConstantStrings.codeexpirein),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: LighColors.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
