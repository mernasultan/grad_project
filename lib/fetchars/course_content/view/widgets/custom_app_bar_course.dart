import 'package:flutter/material.dart';

import '../../../../config/utils/assets.dart';

class CustomAppBarCoures extends StatelessWidget {
  const CustomAppBarCoures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500, // ارتفاع الـ AppBar
      decoration: const BoxDecoration(
        // لون الخلفية
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(0), // جعل الزاوية دائرية
        ),
      ),

      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              AssetsData.course,
              height: 214,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsData.playbutton,
                    height: 28,
                    width: 25,
                  ),
                  const Text(
                    "Preview",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
