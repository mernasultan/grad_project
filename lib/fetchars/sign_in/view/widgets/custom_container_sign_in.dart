import 'package:flutter/material.dart';
import 'package:linkin/config/utils/assets.dart';

class CustomContainerSignIn extends StatelessWidget {
  const CustomContainerSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 353,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: const Color(0xffC6C6C6), // تحديد لون الحدود هنا
            width: 1, // تحديد عرض الحدود إن كان ذلك ضرورياً
          ),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetsData.google,
                width: 32,
                height: 32,
              ),
              const Text(
                "Continue With Google",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        width: 353,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: const Color(0xffC6C6C6), // تحديد لون الحدود هنا
            width: 1, // تحديد عرض الحدود إن كان ذلك ضرورياً
          ),
        ),
        child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetsData.facebook,
                width: 28,
                height: 28,
              ),
              const SizedBox(
                width: 2,
              ),
              const Text(
                "Continue With Facebook",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
