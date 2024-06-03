import 'package:flutter/material.dart';
import 'package:linkin/fetchars/profile_user_corse/view/profile_user_courses_view.dart';
import 'package:linkin/fetchars/skill_sharing/model/skill_sharing_model.dart';

class CustomBiulderDesign extends StatelessWidget {
  const CustomBiulderDesign({super.key, required this.sharingModel});
  final SkillSharingModel sharingModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProfileUserCoursesView(
            skillSharingModel: sharingModel,
          );
        }));
      },
      child: Container(
        width: 168,
        height: 208,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              sharingModel.image,
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              sharingModel.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "UI UX Designer",
              style: TextStyle(
                  color: Color(0xff696767),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "56 Followers",
              style: TextStyle(
                  color: Color(0xff696767),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
