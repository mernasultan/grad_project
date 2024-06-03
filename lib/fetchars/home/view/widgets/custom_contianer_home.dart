import 'package:flutter/material.dart';
import 'package:linkin/fetchars/guidance_test/view/guidance_test.dart';

class CustomContianerHome extends StatelessWidget {
  const CustomContianerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353,
      height: 74,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff4547EB)),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let’s Guide You",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "We Will Help You Find Your Suitable Course",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const GuidanceTest();
              }));
            },
            child: const Icon(
              Icons.arrow_circle_right,
              color: Colors.white, // لون الأيقونة
              size: 40, // حجم الأيقونة
            ),
          )
        ],
      ),
    );
  }
}
