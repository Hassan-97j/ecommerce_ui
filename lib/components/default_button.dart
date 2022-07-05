import 'package:flutter/material.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Theme.of(context).scaffoldBackgroundColor,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: GoogleFonts.varelaRound(
            fontSize: getProportionateScreenWidth(18),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
