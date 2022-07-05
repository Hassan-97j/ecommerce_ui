import 'package:ecommerce_ui/const/assetsname.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/profile/components/profile_menu.dart';
import 'package:ecommerce_ui/screens/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: ConstantStrings.myaccount,
            icon: AssetsName.usericon,
            press: () => {},
          ),
          ProfileMenu(
            text: ConstantStrings.notifications,
            icon: AssetsName.bellicon,
            press: () {},
          ),
          ProfileMenu(
            text: ConstantStrings.settings,
            icon: AssetsName.settingsicon,
            press: () {},
          ),
          ProfileMenu(
            text: ConstantStrings.helpCenter,
            icon: AssetsName.questionicon,
            press: () {},
          ),
          ProfileMenu(
            text: ConstantStrings.logout,
            icon: AssetsName.logouticon,
            press: () {},
          ),
        ],
      ),
    );
  }
}
