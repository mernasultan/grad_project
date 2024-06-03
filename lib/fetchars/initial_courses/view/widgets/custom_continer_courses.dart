import 'package:flutter/material.dart';

class CustomContinerCourse extends StatefulWidget {
  const CustomContinerCourse({super.key, required this.text});
  final String text;

  @override
  State<CustomContinerCourse> createState() => _InitialCoursesViewState();
}

class _InitialCoursesViewState extends State<CustomContinerCourse> {
  Color _containerColor =
      const Color(0xffF8F8F8); // تغيير لون الحاوية الافتراضي
  bool _isSelected = false; // تغيير القيمة الافتراضية للتحديد

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected; // تغيير حالة التحديد عند الضغط
          _containerColor = _isSelected
              ? const Color(0xff4547EB)
              : const Color(0xffF8F8F8); // تغيير لون الحاوية
        });
      },
      child: Container(
        width: 148,
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _containerColor,
        ),
        // تعيين لون الحاوية
        child: Center(
          child: Text(
            widget.text, // استخدام widget.text بدلاً من text
            style: TextStyle(
              fontSize: 14,
              color: !_isSelected
                  ? const Color(0xff696767) // تغيير لون النص عند الضغط
                  : Colors.white, // لون النص الافتراضي
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
