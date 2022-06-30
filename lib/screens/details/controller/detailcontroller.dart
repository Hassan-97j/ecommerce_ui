import 'package:get/get.dart';

class DetailController extends GetxController {
  int selectedImage = 0;

  updateImage(int index) {
    selectedImage = index;
    update();
  }
}
