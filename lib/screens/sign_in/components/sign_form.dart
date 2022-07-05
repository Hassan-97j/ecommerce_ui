// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/const/assetsname.dart';
import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:ecommerce_ui/screens/sign_in/controller/signincontroller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/components/custom_surfix_icon.dart';
import 'package:ecommerce_ui/components/form_error.dart';
import 'package:ecommerce_ui/helper/keyboard.dart';
import 'package:get/get.dart';

class SignForm extends StatelessWidget with BaseController {
  SignForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      init: SignInController(),
      initState: (_) {},
      builder: (_) => Form(
        key: signInController.formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              children: [
                Checkbox(
                  value: signInController.remember,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (value) {
                    signInController.oncheckchange(value);
                  },
                ),
                Text(
                  ConstantStrings.rememberme,
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Get.toNamed(PagesNames.forgotpasswordscreen),
                  child: Text(
                    ConstantStrings.forgotpassword,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                )
              ],
            ),
            FormError(errors: signInController.errors),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
              text: ConstantStrings.continuE,
              press: () {
                if (signInController.formKey.currentState!.validate()) {
                  signInController.formKey.currentState!.save();
                  KeyboardUtil.hideKeyboard(context);

                  Get.toNamed(PagesNames.loginsuccessscreen);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      style: TextStyle(color: Get.theme.primaryColorDark),
      obscureText: true,
      onSaved: (newValue) => signInController.password = newValue,
      onChanged: (value) {
        signInController.onPasswordChange(value);
      },
      validator: (value) {
        return signInController.passwordValidator(value);
      },
      decoration: InputDecoration(
        labelText: ConstantStrings.password,
        hintText: ConstantStrings.enterpassword,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: AssetsName.lockicon),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: TextStyle(color: Get.theme.primaryColorDark),
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => signInController.email = newValue,
      onChanged: (value) {
        signInController.onEmailChange(value);
      },
      validator: (value) {
        return signInController.emailValidator(value);
      },
      decoration: InputDecoration(
        labelText: ConstantStrings.email,
        hintText: ConstantStrings.enterEmail,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: AssetsName.mailicon),
      ),
    );
  }
}
