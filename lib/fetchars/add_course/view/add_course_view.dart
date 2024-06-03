import 'package:flutter/material.dart';
import 'package:linkin/fetchars/add_course/view/widgets/custom_field.dart';

class AddCourseView extends StatelessWidget {
  const AddCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Add Course",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 353,
              height: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: const Color(0xffC6C6C6))),
              child: Padding(
                padding: const EdgeInsets.only(right: 200),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Course Name",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff696767)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const CustomFileld(),
            const SizedBox(height: 16),
            Container(
              width: 353,
              height: 108,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: const Color(0xffC6C6C6))),
              child: Padding(
                padding: const EdgeInsets.only(right: 230),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff696767)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Course Level",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
