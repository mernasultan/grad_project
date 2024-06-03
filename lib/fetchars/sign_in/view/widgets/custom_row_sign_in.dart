import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkin/config/router/app_pages.dart';

class CustomRowSignIn extends StatelessWidget {
  const CustomRowSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't Have An Account?",
          style: TextStyle(
              color: Color(0xff696767),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.signUp);
          },
          child: const Text(
            "Sign up",
            style: TextStyle(
                color: Color(0xff4547EB),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
