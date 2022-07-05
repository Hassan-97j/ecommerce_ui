import 'package:ecommerce_ui/const/assetsname.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/screens/home/components/icon_btn_with_counter.dart';
import 'package:ecommerce_ui/screens/home/components/search_field.dart';
import 'package:get/get.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            svgSrc: AssetsName.carticon,
            press: () => Get.toNamed('/cartScreen'),
          ),
          IconBtnWithCounter(
            svgSrc: AssetsName.bellicon,
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
