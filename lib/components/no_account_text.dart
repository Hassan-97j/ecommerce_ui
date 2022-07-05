import 'package:ecommerce_ui/const/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
          style: GoogleFonts.varelaRound(
            fontSize: getProportionateScreenWidth(16),
            color: Theme.of(context).primaryColorDark,
          ),
        ),
        GestureDetector(
          onTap: () => Get.toNamed('/signUpScreen'),
          child: Text(
            "Sign Up",
            style: GoogleFonts.varelaRound(
              fontSize: getProportionateScreenWidth(16),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
