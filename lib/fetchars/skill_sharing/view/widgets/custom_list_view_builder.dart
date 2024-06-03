import 'package:flutter/material.dart';
import 'package:linkin/fetchars/skill_sharing/model/skill_sharing_model.dart';
import 'package:linkin/fetchars/skill_sharing/view/widgets/custom_builder_design.dart';

import '../../../../config/utils/assets.dart';

class CustomListViewBuilder extends StatefulWidget {
  const CustomListViewBuilder({super.key});

  @override
  State<CustomListViewBuilder> createState() => _CustomListViewBuilderState();
}

class _CustomListViewBuilderState extends State<CustomListViewBuilder> {
  final List<SkillSharingModel> list = [
    SkillSharingModel(
      image: AssetsData.user1,
      name: "Ali Mohamed",
    ),
    SkillSharingModel(image: AssetsData.user2, name: "El Sayed Ahmed"),
    SkillSharingModel(image: AssetsData.user3, name: "Hassan Hassan"),
    SkillSharingModel(image: AssetsData.user4, name: "Mina Atef"),
    SkillSharingModel(image: AssetsData.user5, name: "Alaa Khaled"),
    SkillSharingModel(image: AssetsData.user6, name: "Salem Salem"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // تحديد عدد العناصر في كل سطر
          crossAxisSpacing: 10.0, // تحديد المسافة العمودية بين العناصر
          mainAxisSpacing: 10.0, // تحديد المسافة الأفقية بين العناصر
        ),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomBiulderDesign(
              sharingModel: list[index],
            ),
          );
        },
      ),
    );
  }
}
