import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

import '../../../course_content/view/course_content_view.dart';

class CustomContainerBody extends StatefulWidget {
  const CustomContainerBody(
      {super.key,
      required this.text,
      required this.titel,
      required this.bottom,
      required this.image});
  final String text;
  final String bottom;
  final String titel;
  final String image;

  @override
  State<CustomContainerBody> createState() => _CustomContainerBodyState();
}

class _CustomContainerBodyState extends State<CustomContainerBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(
                widget.image,
              ),
              Container(
                width: 155,
                height: 36,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(41.0),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const CourseContentView();
                    }));
                  },
                  child: Text(
                    widget.bottom,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            widget.titel,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            widget.text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: FlutterSlider(
            values: const [200],
            max: 353,
            min: 0,
            handler: FlutterSliderHandler(
              decoration: const BoxDecoration(), // يجب تحديد هنا
              child:
                  const Icon(Icons.circle, color: Color(0xffFE786C), size: 0),
            ),
            trackBar: FlutterSliderTrackBar(
              activeTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xffFE786C).withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
