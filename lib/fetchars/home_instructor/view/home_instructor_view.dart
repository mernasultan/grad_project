import 'package:flutter/material.dart';
import 'package:linkin/config/utils/assets.dart';

import '../../add_course/view/add_course_view.dart';
import '../../home/view/widgets/custom_body_home.dart';

class HomeInstructorView extends StatelessWidget {
  const HomeInstructorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const CustomBodyHome(),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "My courses",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(child: Image.asset(AssetsData.undrawno)),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "You Have No Courses Yet",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Center(
            child: Container(
              width: 353,
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xff4547EB),
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AddCourseView();
                    }));
                  },
                  child: const Text(
                    "Add Course",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
