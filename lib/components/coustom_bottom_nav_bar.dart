import 'package:ecommerce_ui/const/assetsname.dart';
import 'package:ecommerce_ui/const/enums.dart';
import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/themes/forlightmode/lightcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    Color inActiveIconColor =
        Theme.of(context).primaryColorDark.withOpacity(0.45);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: Theme.of(context).primaryColorLight.withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  AssetsName.shopicon,
                  color: MenuState.home == selectedMenu
                      ? Theme.of(context).primaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.toNamed(PagesNames.homescreen),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  AssetsName.hearticon,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  AssetsName.chaticon,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  AssetsName.usericon,
                  color: MenuState.profile == selectedMenu
                      ? LighColors.kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Get.toNamed(
                  PagesNames.profilescreen,
                ),
              ),
            ],
          )),
    );
  }
}
