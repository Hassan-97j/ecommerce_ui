import 'package:flutter/material.dart';

import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/screens/home/components/categories.dart';
import 'package:ecommerce_ui/screens/home/components/discount_banner.dart';
import 'package:ecommerce_ui/screens/home/components/home_header.dart';
import 'package:ecommerce_ui/screens/home/components/popular_product.dart';
import 'package:ecommerce_ui/screens/home/components/special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const DiscountBanner(),
            Categories(),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
