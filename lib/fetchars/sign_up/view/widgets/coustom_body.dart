import 'package:flutter/material.dart';
import 'package:linkin/config/utils/assets.dart';

class CostomBody extends StatelessWidget {
  const CostomBody({super.key});

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
            "skills hub",
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
            "Create An Account",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Please Fill The Form To Create Your Account",
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
