import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkin/config/api_services.dart';

class LoginController extends GetxController {
  bool isLoading = false;
  final ApiService apiService = ApiService();
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  login(String email, String password) async {
    isLoading = true;
    update();
    await apiService.login(
      email,
      password,
    );
    isLoading = false;
    update();
  }

  submit(String email, String password) async {
    if (formKey.currentState!.validate()) {
      await login(email, password);
    }
  }
}
