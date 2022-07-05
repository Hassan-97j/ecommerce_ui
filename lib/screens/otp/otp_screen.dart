import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = Pages.otp;

  const OtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstantStrings.otpverfication),
      ),
      body: const Body(),
    );
  }
}
