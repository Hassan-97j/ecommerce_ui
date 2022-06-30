import 'package:ecommerce_ui/screens/cart/controller/cartcontroller.dart';
import 'package:ecommerce_ui/screens/complete_profile/controller/completeprofilecontroller.dart';
import 'package:ecommerce_ui/screens/details/controller/detailcontroller.dart';
import 'package:ecommerce_ui/screens/home/controller/homecontroller.dart';
import 'package:ecommerce_ui/screens/otp/controller/otpcontroller.dart';
import 'package:ecommerce_ui/screens/sign_in/controller/signincontroller.dart';
import 'package:ecommerce_ui/screens/sign_up/controller/signupcontroller.dart';
import 'package:ecommerce_ui/screens/splash/controller/splashcontroller.dart';
import 'package:get/get.dart';

class BaseController {
  SplashController splashController = Get.put(SplashController());
  SignInController signInController = Get.put(SignInController());
  SignupController signupController = Get.put(SignupController());
  OtpController otpController = Get.put(OtpController());
  DetailController detailController = Get.put(DetailController());
  CompProfileController compProfileController =
      Get.put(CompProfileController());
  CartController cartController = Get.put(CartController());
  HomeController homeController = Get.put(HomeController());
}
