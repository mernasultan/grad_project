import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:linkin/fetchars/sign_in/view/sign_in.dart';
import 'package:linkin/utils/assets.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "unlock your potential",
              bodyWidget: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    " Explore a diverse range of online",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "courses in digital and technology fields",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              image: Center(
                child: Image.asset(
                  AssetsData.a,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            PageViewModel(
              title: "share  knowledge",
              bodyWidget: const Column(
                children: [
                  Text(
                    "Empower yourself by sharing your skills",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "with others through chat or call",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              image: Center(
                child: Image.asset(
                  AssetsData.b,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            PageViewModel(
              title: "community",
              bodyWidget: const Column(
                children: [
                  Text(
                    "Engage in a thriving community where",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "learners share knowledge and ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "celebrate achievements",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              image: Center(
                child: Image.asset(
                  AssetsData.c,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            PageViewModel(
              title: "course recommendation",
              bodyWidget: const Column(
                children: [
                  Text(
                    "Receive course recommendations",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "based on your skills and qualifications",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              image: Center(
                child: Image.asset(
                  AssetsData.d,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
          onDone: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SignIn();
            }));
          },
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            color: Color.fromARGB(255, 45, 0, 248),
            size: 52,
          ),
          done: const Text(
            "Done",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
          ),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10),
              activeSize: const Size(20, 10),
              //     activeColor:  ,
              color: const Color(0xff686868),
              spacing: const EdgeInsets.symmetric(horizontal: 3),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
        ),
      ),
    ));
  }
}
