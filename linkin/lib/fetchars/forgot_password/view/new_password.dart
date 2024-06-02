import 'package:flutter/material.dart';
import 'package:linkin/fetchars/forgot_password/view/done_view.dart';
import 'package:linkin/utils/assets.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool hidden = true;
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
              "Set Your New Password",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const Text(
              "Your New Password Should Be  Different From",
              style: TextStyle(
                  color: Color(0xff696767),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const Text(
              "Passwords Previously Used.",
              style: TextStyle(
                  color: Color(0xff696767),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
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
                  obscureText: hidden,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hidden = !hidden;
                          });
                        },
                        icon: hidden
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: 'password',
                      border: InputBorder.none,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffC6C6C6))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffC6C6C6)))),
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
                        return const DoneView();
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
        ),
      ),
    );
  }
}
