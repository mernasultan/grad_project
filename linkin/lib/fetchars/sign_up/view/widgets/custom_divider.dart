import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey, // لون الخط هنا
            thickness: 1, // سمك الخط
            height: 0, // الارتفاع العمودي للخط
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 8.0), // المسافة بين الخط والنص
          child: Text(
            'OR',
            style: TextStyle(
              color: Colors.grey, // لون النص هنا
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey, // لون الخط هنا
            thickness: 1, // سمك الخط
            height: 0, // الارتفاع العمودي للخط
          ),
        ),
      ],
    );
  }
}
