import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  int selectedRadio = 0;
  bool switchChange = false;
  var box = GetStorage();

  setSelectedRadio(int val) {
    selectedRadio = val;
    update();
  }

  switchState() {
    // ignore: avoid_print
    print('contructor called');
    if (box.read('isSwitched') != null) {
      switchChange = box.read('isSwitched');
    }
    update();
  }

  onChanged(value) {
    switchChange = value;
    box.write('isSwitched', switchChange);
    update();
  }

  changeIcon() {
    return switchChange
        ? Icon(
            Icons.dark_mode,
            color: Get.theme.primaryColor,
          )
        : Icon(
            Icons.light_mode,
            color: Get.theme.primaryColor,
          );
  }

  changetitle() {
    return switchChange ? 'Dark Theme' : 'Light Theme';
  }
}
