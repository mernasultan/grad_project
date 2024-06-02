import 'package:flutter/material.dart';
import 'package:linkin/fetchars/forgot_password/view/new_password.dart';
import 'package:linkin/fetchars/forgot_password/view/widgets/custom_code.dart';
import 'package:linkin/utils/assets.dart';

class VerificationView extends StatefulWidget {
  const VerificationView({super.key});

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Image.asset(
                  AssetsData.password,
                  width: 221,
                  height: 146.87,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Verification",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const Text(
                "A Five-Digit Code Should Have Come To Your ",
                style: TextStyle(
                    color: Color(0xff696767),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const Text(
                "Email Address That You Indicated.",
                style: TextStyle(
                    color: Color(0xff696767),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const Form(
                child: Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCode(),
                      CustomCode(),
                      CustomCode(),
                      CustomCode(),
                      CustomCode(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
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
                          return const NewPassword();
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
              ),
            ],
          )),
    );
  }
}
