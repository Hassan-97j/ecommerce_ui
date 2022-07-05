import 'package:ecommerce_ui/const/pagesname.dart';
import 'package:ecommerce_ui/screens/cart/cart_screen.dart';
import 'package:ecommerce_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_ui/screens/details/details_screen.dart';
import 'package:ecommerce_ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screens/home/home_screen.dart';
import 'package:ecommerce_ui/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_ui/screens/otp/otp_screen.dart';
import 'package:ecommerce_ui/screens/profile/profile_screen.dart';
import 'package:ecommerce_ui/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_ui/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce_ui/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

appRoutes() => [
      //splash
      GetPage(
        name: PagesNames.splashscreen,
        page: () => const SplashScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //sign in screen
      GetPage(
        name: PagesNames.signinscreen,
        page: () => const SignInScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //forgot password screen
      GetPage(
        name: PagesNames.forgotpasswordscreen,
        page: () => const ForgotPasswordScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // login success screen
      GetPage(
        name: PagesNames.loginsuccessscreen,
        page: () => const LoginSuccessScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // sign up screen
      GetPage(
        name: PagesNames.signupscreen,
        page: () => const SignUpScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // complete profile screen
      GetPage(
        name: PagesNames.completeprofilescreen,
        page: () => const CompleteProfileScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // otp screen
      GetPage(
        name: PagesNames.otpscreen,
        page: () => const OtpScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //home screen
      GetPage(
        name: PagesNames.homescreen,
        page: () => HomeScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(
          milliseconds: 500,
        ),
      ),
      //detail screen
      GetPage(
        name: PagesNames.detailscreen,
        page: () => const DetailsScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // cart screen
      GetPage(
        name: PagesNames.cartscreen,
        page: () => const CartScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //profile screen
      GetPage(
        name: PagesNames.profilescreen,
        page: () => const ProfileScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    // ignore: avoid_print
    print(page?.name);
    return super.onPageCalled(page);
  }
}
