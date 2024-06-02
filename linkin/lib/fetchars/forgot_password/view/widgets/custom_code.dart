import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomCode extends StatefulWidget {
  const CustomCode({super.key});

  @override
  State<CustomCode> createState() => _CustomCodeState();
}

class _CustomCodeState extends State<CustomCode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xff696767), // تغيير لون الإطار هنا
          width: 1, // عرض الإطار
        ),
      ),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(
            hintText: "-",
            hintStyle: TextStyle(
                fontSize: 20,
                color: Color(0xff696767),
                fontWeight: FontWeight.w400)),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
