import 'package:ecommerce_ui/const/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: Theme.of(context).primaryColorDark,
          ),
        ),
        GestureDetector(
          onTap: () => Get.toNamed('/signUpScreen'),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
