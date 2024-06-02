import 'package:flutter/material.dart';
import 'package:linkin/fetchars/skill_sharing/model/skill_sharing_model.dart';

import '../../schedule_session/view/schedule_session_view.dart';

class UiUxDesignerView extends StatelessWidget {
  const UiUxDesignerView({super.key, required this.skillSharingModel});
  final SkillSharingModel skillSharingModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  skillSharingModel.image,
                  width: 70,
                  height: 70,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                skillSharingModel.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                "Ui Ux Designer",
                style: TextStyle(
                    color: Color(0xff696767),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const Text(
              "Ui Ux Designer",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consec adipiscing elit, dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer lorem ipsum adipiscing elit, dolore magna aliquam erat volutpat.",
              style: TextStyle(
                  color: Color(0xff696767),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              maxLines: 4,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 353,
              height: 174,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        size: 24,
                        color: Color(0xff4547EB),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consec adipiscing elit.",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff696767)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        size: 24,
                        color: Color(0xff4547EB),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet.",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff696767)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        size: 24,
                        color: Color(0xff4547EB),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consec adipiscing elit.",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff696767)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        size: 24,
                        color: Color(0xff4547EB),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consec adipiscing elit.",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff696767)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        size: 24,
                        color: Color(0xff4547EB),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet.",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff696767)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            Center(
              child: Container(
                width: 353,
                height: 52,
                color: const Color(0xff4547EB),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ScheduleSessionView();
                    }));
                  },
                  child: const Text(
                    "Schedule Session",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
