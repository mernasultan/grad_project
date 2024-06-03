import 'package:flutter/material.dart';

class CustomDesianHome extends StatelessWidget {
  const CustomDesianHome({super.key, required this.text, required this.titel});
  final String text;
  final String titel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            titel,
            style: const TextStyle(
                color: Color(0xff999999),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ),
      ]),
    );
  }
}
