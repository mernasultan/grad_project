import 'package:flutter/material.dart';
import 'package:linkin/utils/assets.dart';

class CostomBodySignIn extends StatelessWidget {
  const CostomBodySignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            AssetsData.graduation,
            width: 96,
            height: 68,
          ),
        ),
        const Center(
          child: Text(
            "Skills Hub",
            style: TextStyle(
                color: Color(0xff4547EB),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Login To Your Account",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Please Fill The Form To Login To Your Account",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff696767),
            ),
          ),
        ),
      ],
    );
  }
}
