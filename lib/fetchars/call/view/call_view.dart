import 'package:flutter/material.dart';
import 'package:linkin/config/utils/assets.dart';

class CallView extends StatelessWidget {
  const CallView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetsData.call,
          width: double.infinity,
          height: double.infinity,
          fit:
              BoxFit.contain, // تحديد كيفية تناسب الصورة داخل المكان المحدد لها
        ),
      ),
    );
  }
}
