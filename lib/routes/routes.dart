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
        name: '/splashScreen',
        page: () => const SplashScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //sign in screen
      GetPage(
        name: '/signInScreen',
        page: () => const SignInScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //forgot password screen
      GetPage(
        name: '/forgotPAsswordScreen',
        page: () => const ForgotPasswordScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // login success screen
      GetPage(
        name: '/loginSuccessScreen',
        page: () => const LoginSuccessScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // sign up screen
      GetPage(
        name: '/signUpScreen',
        page: () => const SignUpScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // complete profile screen
      GetPage(
        name: '/completeProfileScreen',
        page: () => const CompleteProfileScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // otp screen
      GetPage(
        name: '/otpScreen',
        page: () => const OtpScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //home screen
      GetPage(
        name: '/homeScreen',
        page: () => HomeScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(
          milliseconds: 500,
        ),
      ),
      //detail screen
      GetPage(
        name: '/detailScreen',
        page: () => const DetailsScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      // cart screen
      GetPage(
        name: '/cartScreen',
        page: () => const CartScreen(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      //profile screen
      GetPage(
        name: '/profileScreen',
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
