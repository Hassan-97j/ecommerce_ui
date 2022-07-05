import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/models/cart.dart';

import 'package:ecommerce_ui/screens/cart/components/body.dart';
import 'package:ecommerce_ui/screens/cart/components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = PagesNames.cartscreen;

  const CartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            ConstantStrings.yourCart,
            style: TextStyle(color: Theme.of(context).primaryColorDark),
          ),
          Text(
            "$demoCarts.length $ConstantStrings.items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
