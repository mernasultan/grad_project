import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkin/fetchars/home/model/category_model.dart';

class CustomBottomRecommended extends StatelessWidget {
  const CustomBottomRecommended({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 218,
      height: 269,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            categoryModel.image,
            width: 210,
            height: 160,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              categoryModel.categoryname,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Jehad Adili",
            style: TextStyle(
                color: Color(0xff9F9F9F),
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Text('4.7',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff696767))),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 87,
                height: 21,
                child: Row(
                  children: [
                    Icon(
                        FontAwesomeIcons
                            .solidStar, // استخدام أيقونة النجمة الممتلئة
                        size: 15,
                        color: Colors.amber),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                        FontAwesomeIcons
                            .solidStar, // استخدام أيقونة النجمة الممتلئة
                        size: 15,
                        color: Colors.amber),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                        FontAwesomeIcons
                            .solidStar, // استخدام أيقونة النجمة الممتلئة
                        size: 15,
                        color: Colors.amber),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                        FontAwesomeIcons
                            .solidStar, // استخدام أيقونة النجمة الممتلئة
                        size: 15,
                        color: Colors.amber),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(
                        FontAwesomeIcons
                            .solidStarHalf, // استخدام أيقونة النجمة الممتلئة
                        size: 15,
                        color: Colors.amber),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "(23,100)",
                style: TextStyle(
                    fontSize: 10,
                    color: Color(0xff999999),
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "1200 EGP",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff696767),
                    fontWeight: FontWeight.w500),
              ),
              Container(
                  width: 65,
                  height: 23,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: const Color(0xffFFF2F0)),
                  child: const Text(
                    "beginner",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffFE786C),
                        fontWeight: FontWeight.w500),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
