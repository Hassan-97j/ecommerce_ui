// ignore_for_file: must_be_immutable

import 'package:ecommerce_ui/const/assetsname.dart';
import 'package:ecommerce_ui/const/basecontroller.dart';
import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/const/size_config.dart';
import 'package:ecommerce_ui/const/strings.dart';
import 'package:ecommerce_ui/screens/complete_profile/controller/completeprofilecontroller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/components/custom_surfix_icon.dart';
import 'package:ecommerce_ui/components/default_button.dart';
import 'package:ecommerce_ui/components/form_error.dart';
import 'package:get/get.dart';

class CompleteProfileForm extends StatelessWidget with BaseController {
  CompleteProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CompProfileController>(
      init: CompProfileController(),
      initState: (_) {},
      builder: (_) => Form(
        key: compProfileController.formKey,
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPhoneNumberFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildAddressFormField(),
            FormError(errors: compProfileController.errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(
              text: ConstantStrings.continuE,
              press: () {
                if (compProfileController.formKey.currentState!.validate()) {
                  Get.toNamed(PagesNames.otpscreen);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => compProfileController.address = newValue,
      onChanged: (value) {
        compProfileController.onAddressChanged(value);
      },
      validator: (value) {
        return compProfileController.addressValidator(value);
      },
      decoration: InputDecoration(
        labelText: ConstantStrings.address,
        hintText: ConstantStrings.enteraddress,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: AssetsName.locationicon),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => compProfileController.phoneNumber = newValue,
      onChanged: (value) {
        compProfileController.onPhoneChanged(value);
      },
      validator: (value) {
        return compProfileController.phoneValidator(value);
      },
      decoration: InputDecoration(
        labelText: ConstantStrings.phone,
        hintText: ConstantStrings.enterphone,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: AssetsName.phoneicon),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => compProfileController.lastName = newValue,
      decoration: InputDecoration(
        labelText: ConstantStrings.lname,
        hintText: ConstantStrings.enterlname,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: AssetsName.user2icon),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => compProfileController.firstName = newValue,
      onChanged: (value) {
        compProfileController.onFirstnameChanged(value);
      },
      validator: (value) {
        return compProfileController.firstNameValidator(value);
      },
      decoration: InputDecoration(
        labelText: ConstantStrings.fname,
        hintText: ConstantStrings.enterfname,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: AssetsName.user2icon),
      ),
    );
  }
}
