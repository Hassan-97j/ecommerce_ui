// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:ecommerce_ui/models/product.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/details/components/color_dots.dart';
import 'package:ecommerce_ui/screens/details/components/product_description.dart';
import 'package:ecommerce_ui/screens/details/components/top_rounded_container.dart';
import 'package:ecommerce_ui/screens/details/components/product_images.dart';

class Body extends StatelessWidget with BaseController {
  final Product product;

  Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Theme.of(context).primaryColorLight,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Theme.of(context).primaryColorLight,
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Theme.of(context).primaryColorLight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: ConstantStrings.addtocart,
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
