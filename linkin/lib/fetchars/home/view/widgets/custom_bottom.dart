import 'package:flutter/material.dart';
import 'package:linkin/fetchars/home/model/category_model.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.categorymodel,
  });
  final CategoryModel categorymodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 60,
          height: 81,
          child: Image.asset(
            categorymodel.image,
            width: 28,
            height: 28,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 10),
          child: Text(
            categorymodel.categoryname,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
