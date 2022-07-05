import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = Pages.forgotPassword;

  const ForgotPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstantStrings.forgotpassword),
      ),
      body:  Body(),
    );
  }
}
