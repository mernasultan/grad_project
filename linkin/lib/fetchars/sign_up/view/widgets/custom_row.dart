import 'package:flutter/material.dart';
import 'package:linkin/fetchars/sign_in/view/sign_in.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already Have An Account?",
          style: TextStyle(
              color: Color(0xff696767),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SignIn();
            }));
          },
          child: const Text(
            "Sign In",
            style: TextStyle(
                color: Color(0xff4547EB),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
