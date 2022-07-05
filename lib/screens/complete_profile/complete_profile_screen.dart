import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = Pages.completeprofile;

  const CompleteProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstantStrings.signup),
      ),
      body: Body(),
    );
  }
}
