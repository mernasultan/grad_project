import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:linkin/fetchars/home/view/home_view.dart';
import 'package:linkin/fetchars/sign_up/controller/register_controller.dart';

class ApiService {
  final String baseUrl =
      'https://c96aec8e0a82f9.lhr.life'; // Replace with your API base URL

  Future<void> signUp(String username, String email, String password) async {
    final url = Uri.parse('$baseUrl/signup');
    final headers = {
      'Content-Type': 'application/json',
      'auth': 'd546%5465&465-hSS551\$561956-254154SDSdD^W',
      'model': 'User.User'
    };
    final body = json.encode({
      'username': username,
      'email': email,
      'password': password,
    });

    try {
      final response = await http.post(url, headers: headers, body: body);
      final data = json.decode(response.body);
      if (response.statusCode == 200) {
        if (data['msg'] == 'User is already exists') {
          Get.snackbar('Error', 'This user already exists',
              backgroundColor: Colors.red,
              colorText: Colors.white,
              isDismissible: true,
              messageText: const Text(
                'This user already exists',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ));
        } else {
          Get.snackbar('Success', 'Registered successfully',
              backgroundColor: Colors.green,
              colorText: Colors.white,
              isDismissible: true,
              messageText: const Text(
                'Registered successfully',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ));
          Get.find<RegisterController>().usernameController.clear();
          Get.find<RegisterController>().emailController.clear();
          Get.find<RegisterController>().passwordController.clear();
        }
      } else {
        Get.snackbar('Error', 'Oops! Please try again',
            backgroundColor: Colors.red,
            colorText: Colors.white,
            isDismissible: true,
            messageText: const Text(
              'Oops! Please try again',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ));
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> login(String email, String password) async {
    final url = Uri.parse('$baseUrl/login');
    final headers = {
      'Content-Type': 'application/json',
      'auth': 'd546%5465&465-hSS551\$561956-254154SDSdD^W',
      'model': 'User.User',
    };
    final body = json.encode({
      'email': email,
      'password': password,
    });

    try {
      final response = await http.post(url, headers: headers, body: body);
      final data = json.decode(response.body);

      if (response.statusCode == 200) {
        if (data['msg'] == 'email or password not found') {
          Get.snackbar('Error', 'Invalid email or password',
              backgroundColor: Colors.red,
              colorText: Colors.white,
              isDismissible: true,
              messageText: const Text(
                'Invalid email or password',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ));
        } else {
          Get.to(() => const HomeView());
          Get.find<RegisterController>().usernameController.clear();
          Get.find<RegisterController>().emailController.clear();
          Get.find<RegisterController>().passwordController.clear();
        }
      } else {
        Get.snackbar('Error', 'Oops! Please try again',
            backgroundColor: Colors.red,
            colorText: Colors.white,
            isDismissible: true,
            messageText: const Text(
              'Oops! Please try again',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ));
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
