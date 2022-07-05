import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = Pages.loginsuccess;

  const LoginSuccessScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text(ConstantStrings.loginSuccess),
      ),
      body: const Body(),
    );
  }
}
