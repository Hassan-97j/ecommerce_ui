// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/const/basecontroller.dart';

import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/screens/sign_up/controller/signupcontroller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/components/custom_surfix_icon.dart';
import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/components/form_error.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget with BaseController {
  SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
      init: SignupController(),
      initState: (_) {},
      builder: (_) => Form(
        key: signupController.formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildConformPassFormField(),
            FormError(errors: signupController.errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(
              text: "Continue",
              press: () {
                if (signupController.formKey.currentState!.validate()) {
                  signupController.formKey.currentState!.save();

                  Get.toNamed('/completeProfileScreen');
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => signupController.conform_password = newValue,
      onChanged: (value) {
        signupController.onconfirmPasswordChange(value);
      },
      validator: (value) {
        return signupController.confirmpasswordValidator(value);
      },
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => signupController.password = newValue,
      onChanged: (value) {
        signupController.onPasswordChange(value);
      },
      validator: (value) {
        return signupController.passwordValidator(value);
      },
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => signupController.email = newValue,
      onChanged: (value) {
        signupController.onEmailChange(value);
      },
      validator: (value) {
        return signupController.emailValidator(value);
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
