import 'package:get/get.dart';

class HomeController extends GetxController {
  int selectedRadio = 0;

  setSelectedRadio(int val) {
    selectedRadio = val;
    update();
  }
}
