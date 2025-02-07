import 'package:flutter/material.dart';
import 'package:linkin/fetchars/forgot_password/view/forgot_password_view.dart';
import 'package:linkin/fetchars/initial_courses/view/initial_courses_view.dart';
import 'package:linkin/fetchars/sign_in/view/widgets/custom_body_sign_in.dart';
import 'package:linkin/fetchars/sign_in/view/widgets/custom_container_sign_in.dart';
import 'package:linkin/fetchars/sign_in/view/widgets/custom_divider_sign_in.dart';
import 'package:linkin/fetchars/sign_in/view/widgets/custom_row_sign_in.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _rememberMe = false;
  @override
  void initState() {
    super.initState();
    _rememberMe = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const CostomBodySignIn(),
          const SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 353,
              height: 52,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: 'Email',
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC6C6C6))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFE786C)))),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 353,
              height: 52,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: !_rememberMe,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: 'Password',
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC6C6C6))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFE786C)))),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Checkbox(
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                },
              ),
              const Text(
                'Remember Me',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff696767)),
              ),
              const SizedBox(
                width: 100,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ForgotPasswordView();
                  }));
                },
                child: const Text(
                  "Forgot Your Password?",
                  style: TextStyle(
                      color: Color(0xff4547EB),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 353,
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xff4547EB),
                borderRadius: BorderRadius.circular(4),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const InitialCoursesView();
                    }));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          const CustomRowSignIn(),
          const SizedBox(
            height: 20,
          ),
          const CustomDividerSignIn(),
          const SizedBox(
            height: 20,
          ),
          const CustomContainerSignIn()
        ],
      ),
    );
  }
}
