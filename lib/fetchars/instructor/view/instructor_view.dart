import 'package:flutter/material.dart';
import 'package:linkin/config/utils/assets.dart';

import '../../bottom_instructor/bottom_instructor_view.dart';

class InstructorView extends StatelessWidget {
  const InstructorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 163,
          ),
          Center(
            child: Image.asset(
              AssetsData.undrawteaching,
              width: 286,
              height: 211.42,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Center(
            child: Text(
              "TEACH WITH US",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 12),
            child: Text(
              "share your knowledge and expertise with students from all around the world",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff5E5959),
              ),
              maxLines: 2,
            ),
          ),
          const SizedBox(
            height: 102,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CustombottomInstr();
                  }));
                },
                child: const Text(
                  "Get Started",
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
