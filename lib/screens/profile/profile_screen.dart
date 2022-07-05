import 'package:ecommerce_ui/components/coustom_bottom_nav_bar.dart';
import 'package:ecommerce_ui/const/enums.dart';
import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = Pages.profile;

  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstantStrings.profile),
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
