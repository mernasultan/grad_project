import 'package:get/get.dart';
import 'package:linkin/config/router/app_pages.dart';
import 'package:linkin/fetchars/sign_in/bindings/login_bindings.dart';
import 'package:linkin/fetchars/sign_in/view/sign_in.dart';
import 'package:linkin/fetchars/sign_up/bindings/register_bindings.dart';
import 'package:linkin/fetchars/sign_up/view/sign_up.dart';
import 'package:linkin/fetchars/splash/splash_view.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.initial,
      page: () => const SplashView(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => const SignUp(),
      binding: RegisterBindings(),
    ),
    GetPage(
      name: Routes.logIn,
      page: () => const SignIn(),
      binding: LoginBindings(),
    ),
  ];
}
