import 'package:ecommerce_ui/const/strings.dart';
import 'package:ecommerce_ui/themes/forlightmode/lightcolors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/const/size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: LighColors.kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        // ignore: avoid_print
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: ConstantStrings.searchProducts,
            prefixIcon: const Icon(Icons.search)),
      ),
    );
  }
}
