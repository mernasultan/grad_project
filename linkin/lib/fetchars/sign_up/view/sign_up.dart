import 'package:flutter/material.dart';
import 'package:linkin/fetchars/initial_courses/view/initial_courses_view.dart';
import 'package:linkin/fetchars/sign_up/view/widgets/coustom_body.dart';
import 'package:linkin/fetchars/sign_up/view/widgets/custom_container.dart';
import 'package:linkin/fetchars/sign_up/view/widgets/custom_divider.dart';
import 'package:linkin/fetchars/sign_up/view/widgets/custom_row.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CostomBody(),
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
                      hintText: 'username',
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
                      "Sign Up",
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
            const CustomText(),
            const SizedBox(
              height: 20,
            ),
            const CustomDivider(),
            const SizedBox(
              height: 20,
            ),
            const CustomContainer()
          ],
        ),
      ),
    );
  }
}
