import 'package:flutter/material.dart';

class CustomSectionBody extends StatelessWidget {
  const CustomSectionBody(
      {super.key, required this.image, required this.text, this.image1});
  final String image;
  final String? image1;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353,
      height: 68,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black, width: 1)),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            image,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 180,
          ),
          Image.asset(
            image,
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
