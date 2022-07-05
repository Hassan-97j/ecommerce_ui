import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = Pages.signin;

  const SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstantStrings.signin),
      ),
      body: Body(),
    );
  }
}
