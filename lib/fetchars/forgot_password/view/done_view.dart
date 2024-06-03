import 'package:flutter/material.dart';
import 'package:linkin/fetchars/sign_in/view/sign_in.dart';

import '../../../config/utils/assets.dart';

class DoneView extends StatelessWidget {
  const DoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AssetsData.done,
              width: 221,
              height: 146.87,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Forgot Your Password?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Enter Your Email For The Verification Process",
            style: TextStyle(
                color: Color(0xff696767),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          const Text(
            "We Will Send Code To Your Email",
            style: TextStyle(
                color: Color(0xff696767),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 20,
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
                    return const SignIn();
                  }));
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
