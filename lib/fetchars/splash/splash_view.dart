import 'dart:async';

import 'package:flutter/material.dart';
import 'package:linkin/fetchars/onboarding/onboarding_view.dart';
import 'package:linkin/config/utils/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const OnboardingView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsData.graduation,
              width: 191,
              height: 154,
            ),
            const Text(
              "SkiLLs Hub",
              style: TextStyle(
                  color: Color(0xff4547EB),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Skill up with Skills Hub",
              style: TextStyle(color: Color(0xff292B8D), fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
