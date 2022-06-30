import 'package:ecommerce_ui/models/cart.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  remove(int index) {
    demoCarts.removeAt(index);
    update();
  }
}
