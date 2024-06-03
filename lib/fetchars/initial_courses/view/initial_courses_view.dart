import 'package:flutter/material.dart';
import 'package:linkin/fetchars/bottom_nav_bar/bottom_view.dart';
import 'package:linkin/fetchars/initial_courses/view/widgets/custom_body_courses.dart';
import 'package:linkin/fetchars/initial_courses/view/widgets/custom_column.dart';

class InitialCoursesView extends StatefulWidget {
  const InitialCoursesView({super.key});

  @override
  State<InitialCoursesView> createState() => _InitialCoursesViewState();
}

class _InitialCoursesViewState extends State<InitialCoursesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const CostomBodyCourses(),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(width: 353, height: 312, child: CustomClum()),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      return const CustomGoogleNavBar();
                    }));
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ),
        ],
      ),
    ));
  }
}
