import 'package:ecommerce_ui/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPAsswordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;

  onemailChanged(value) {
    if (value.isNotEmpty && errors.contains(kEmailNullError)) {
      errors.remove(kEmailNullError);
      update();
    } else if (emailValidatorRegExp.hasMatch(value) &&
        errors.contains(kInvalidEmailError)) {
      errors.remove(kInvalidEmailError);
      update();
    }
    return;
  }

  emailValidator(value) {
    if (value!.isEmpty && !errors.contains(kEmailNullError)) {
      errors.add(kEmailNullError);
      update();
    } else if (!emailValidatorRegExp.hasMatch(value) &&
        !errors.contains(kInvalidEmailError)) {
      errors.add(kInvalidEmailError);
      update();
    }
    return;
  }
}
