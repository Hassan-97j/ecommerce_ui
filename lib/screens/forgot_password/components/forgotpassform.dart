// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/components/custom_surfix_icon.dart';
import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/components/form_error.dart';
import 'package:ecommerce_ui/components/no_account_text.dart';
import 'package:ecommerce_ui/const/assetsname.dart';
import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:ecommerce_ui/screens/forgot_password/controller/forgotpasswordcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassForm extends StatelessWidget with BaseController {
  ForgotPassForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPAsswordController>(
      init: ForgotPAsswordController(),
      initState: (_) {},
      builder: (_) => Form(
        key: forgotPAsswordController.formKey,
        child: Column(
          children: [
            TextFormField(
               style: TextStyle(color: Get.theme.primaryColorDark),
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => forgotPAsswordController.email = newValue,
              onChanged: (value) {
                forgotPAsswordController.onemailChanged(value);
              },
              validator: (value) {
                return forgotPAsswordController.emailValidator(value);
              },
              decoration: InputDecoration(
                labelText: ConstantStrings.email,
                hintText: ConstantStrings.enterEmail,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSurffixIcon(svgIcon: AssetsName.mailicon),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            FormError(errors: forgotPAsswordController.errors),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            DefaultButton(
              text: ConstantStrings.continuE,
              press: () {
                if (forgotPAsswordController.formKey.currentState!.validate()) {
                  Get.toNamed(PagesNames.signinscreen);
                }
              },
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            const NoAccountText(),
          ],
        ),
      ),
    );
  }
}
