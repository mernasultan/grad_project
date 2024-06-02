import 'package:flutter/material.dart';
import 'package:linkin/utils/assets.dart';

class CostomBodyCourses extends StatelessWidget {
  const CostomBodyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 60,
      ),
      Center(
        child: Image.asset(
          AssetsData.graduation,
          width: 96,
          height: 68,
        ),
      ),
      const Center(
        child: Text(
          "Skills Hub",
          style: TextStyle(
              color: Color(0xff4547EB),
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          "What Are You Interested In?",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          "Help Us To Recomend You Initial Courses",
          style: TextStyle(
              color: Color(0xff696767),
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
      )
    ]);
  }
}
