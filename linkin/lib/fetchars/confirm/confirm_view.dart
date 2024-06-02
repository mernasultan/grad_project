import 'package:flutter/material.dart';

import 'package:linkin/fetchars/skill_sharing/model/skill_sharing_model.dart';
import 'package:linkin/utils/assets.dart';

class ConfirmmView extends StatelessWidget {
  const ConfirmmView({
    super.key,
    this.skillSharingModel,
  });
  final SkillSharingModel? skillSharingModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Center(
            child: Image.asset(
              AssetsData.cart,
              width: 211,
              height: 251.45,
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          const Text(
            "You Have Scheduled A Session",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "wait for ali hassan to accept the session",
              style: TextStyle(
                  color: Color(0xff686767),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              maxLines: 2,
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Container(
            width: 353,
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xff4547EB),
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
          ),
        ],
      ),
    );
  }
}
