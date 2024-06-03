import 'package:get/get.dart';
import 'package:linkin/fetchars/sign_in/controller/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
