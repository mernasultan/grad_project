import 'package:flutter/material.dart';
import 'package:linkin/fetchars/initial_courses/view/widgets/custom_continer_courses.dart';

class CustomClum extends StatelessWidget {
  const CustomClum({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            CustomContinerCourse(text: "UI UX Design"),
            SizedBox(
              width: 10,
            ),
            CustomContinerCourse(text: "Web Development"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            CustomContinerCourse(text: "Data Science"),
            SizedBox(
              width: 10,
            ),
            CustomContinerCourse(text: "Mobile Development"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            CustomContinerCourse(text: "Machine Learning"),
            SizedBox(
              width: 10,
            ),
            CustomContinerCourse(text: "Data Base"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            CustomContinerCourse(text: "Database"),
            SizedBox(
              width: 10,
            ),
            CustomContinerCourse(text: "Cloud Computing"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            CustomContinerCourse(text: "System Analysis"),
            SizedBox(
              width: 10,
            ),
            CustomContinerCourse(text: "Networks"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        CustomContinerCourse(text: "Big Data Analytics"),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
