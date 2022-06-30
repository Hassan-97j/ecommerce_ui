import 'package:ecommerce_ui/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompProfileController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      errors.add(error);
      update();
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      errors.remove(error);
      update();
    }
  }

  onAddressChanged(value) {
    if (value.isNotEmpty) {
      removeError(error: kAddressNullError);
    }
    update();
    return;
  }

  addressValidator(value) {
    if (value!.isEmpty) {
      addError(error: kAddressNullError);
      return "";
    }
    update();
    return;
  }

  onPhoneChanged(value) {
    if (value.isNotEmpty) {
      removeError(error: kPhoneNumberNullError);
    }
    update();
    return;
  }

  phoneValidator(value) {
    if (value!.isEmpty) {
      addError(error: kPhoneNumberNullError);
      return "";
    }
    update();
    return;
  }

  onFirstnameChanged(value) {
    if (value.isNotEmpty) {
      removeError(error: kNamelNullError);
    }
    update();
    return;
  }

  firstNameValidator(value) {
    if (value!.isEmpty) {
      addError(error: kNamelNullError);
      return "";
    }
    update();
    return;
  }
}
