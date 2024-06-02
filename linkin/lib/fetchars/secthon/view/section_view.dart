import 'package:flutter/material.dart';
import 'package:linkin/fetchars/secthon/view/widgets/custom_section_body.dart';
import 'package:linkin/utils/assets.dart';

class SectionView extends StatelessWidget {
  const SectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomSectionBody(
              image: AssetsData.witch,
              text: "Lesson 1",
            ),
            SizedBox(
              height: 10,
            ),
            CustomSectionBody(
              image: AssetsData.witch,
              text: "Lesson 2 ",
              image1: AssetsData.lock,
            ),
            SizedBox(
              height: 10,
            ),
            CustomSectionBody(
              image: AssetsData.witch,
              text: "Lesson 3",
              image1: AssetsData.lock,
            ),
            SizedBox(
              height: 10,
            ),
            CustomSectionBody(
              image: AssetsData.witch,
              text: "Lesson 4",
              image1: AssetsData.lock,
            ),
            SizedBox(
              height: 10,
            ),
            CustomSectionBody(
              image: AssetsData.witch,
              text: "Lesson 5",
              image1: AssetsData.lock,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
