import 'package:ecommerce_ui/const/size_config.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body:  Body(),
    );
  }
}
