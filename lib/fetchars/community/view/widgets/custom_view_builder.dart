import 'package:flutter/material.dart';
import 'package:linkin/fetchars/community/model/community_model.dart';
import 'package:linkin/fetchars/community/view/widgets/custom_user_bulder.dart';

import '../../../../config/utils/assets.dart';

class CustomViewBuilder extends StatefulWidget {
  const CustomViewBuilder({super.key});

  @override
  State<CustomViewBuilder> createState() => _CustomViewBuilderState();
}

class _CustomViewBuilderState extends State<CustomViewBuilder> {
  final List<CommunityModel> list = [
    CommunityModel(image: AssetsData.user1, text: "Ali Mohamed"),
    CommunityModel(image: AssetsData.user2, text: "El Sayed Ahmed"),
    CommunityModel(image: AssetsData.user3, text: "Hassan Hassan"),
    CommunityModel(image: AssetsData.user4, text: "Mina Atef"),
    CommunityModel(image: AssetsData.user5, text: "Alaa Khaled"),
    CommunityModel(image: AssetsData.user6, text: "Salem Salem"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomUserBuilder(
              communityModel: list[index],
            ),
          );
        },
      ),
    );
  }
}
