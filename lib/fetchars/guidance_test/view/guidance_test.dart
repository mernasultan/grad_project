import 'package:flutter/material.dart';
import 'package:linkin/fetchars/guidance_test/view/widgets/custom_education.dart';
import 'package:linkin/fetchars/guidance_test/view/widgets/custom_major.dart';

class GuidanceTest extends StatefulWidget {
  const GuidanceTest({super.key});

  @override
  State<GuidanceTest> createState() => _GuidanceTestState();
}

class _GuidanceTestState extends State<GuidanceTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Guidance Test",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 20, top: 40),
        child: Column(
          children: [
            CustomEducation(),
            SizedBox(
              height: 20,
            ),
            CustomMajar()
          ],
        ),
      ),
    );
  }
}
