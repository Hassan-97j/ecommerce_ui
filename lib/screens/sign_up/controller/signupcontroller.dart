import 'package:ecommerce_ui/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  // ignore: non_constant_identifier_names
  String? conform_password;
  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      errors.add(error);
    }
    update();
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      errors.remove(error);
    }
    update();
  }

  //on changing password field
  onconfirmPasswordChange(value) {
    if (value.isNotEmpty) {
      removeError(error: kPassNullError);
    } else if (value.isNotEmpty && password == conform_password) {
      removeError(error: kMatchPassError);
    }
    update();
    conform_password = value;
  }

  confirmpasswordValidator(value) {
    if (value!.isEmpty) {
      addError(error: kPassNullError);
      return "";
    } else if ((password != value)) {
      addError(error: kMatchPassError);
      return "";
    }
    update();
    return;
  }

  //on changing password field
  onPasswordChange(value) {
    if (value.isNotEmpty) {
      removeError(error: kPassNullError);
    } else if (value.length >= 8) {
      removeError(error: kShortPassError);
    }
    update();
    return;
  }

  //validate password
  passwordValidator(value) {
    if (value!.isEmpty) {
      addError(error: kPassNullError);
      return "";
    } else if (value.length < 8) {
      addError(error: kShortPassError);
      return "";
    }
    update();
    return;
  }

  // on changing email field
  onEmailChange(value) {
    if (value.isNotEmpty) {
      removeError(error: kEmailNullError);
    } else if (emailValidatorRegExp.hasMatch(value)) {
      removeError(error: kInvalidEmailError);
    }
    update();
    return;
  }

  emailValidator(value) {
    if (value!.isEmpty) {
      addError(error: kEmailNullError);
      return "";
    } else if (!emailValidatorRegExp.hasMatch(value)) {
      addError(error: kInvalidEmailError);
      return "";
    }
    update();
    return;
  }
}
