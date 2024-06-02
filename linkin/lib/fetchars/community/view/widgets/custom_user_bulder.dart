import 'package:flutter/material.dart';
import '../../model/community_model.dart';

class CustomUserBuilder extends StatelessWidget {
  const CustomUserBuilder({super.key, required this.communityModel});

  final CommunityModel communityModel;

  String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          communityModel.image,
          width: 50,
          height: 50,
        ),
        Text(
          truncateText(communityModel.text, 6),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
