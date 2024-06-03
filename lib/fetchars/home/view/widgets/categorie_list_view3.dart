import 'package:flutter/material.dart';
import 'package:linkin/fetchars/home/model/category_model.dart';
import 'package:linkin/fetchars/home/view/widgets/custom_bottom_recommended.dart';
import 'package:linkin/config/utils/assets.dart';

class CategoriesListView3 extends StatelessWidget {
  const CategoriesListView3({
    super.key,
  });
  final List<CategoryModel> categorie = const [
    CategoryModel(
        image: AssetsData.java, categoryname: "Java Script From Zero To Hero"),
    CategoryModel(
        image: AssetsData.design, categoryname: "Ui Ux Design Full Course"),
    CategoryModel(
        image: AssetsData.design, categoryname: "Ui Ux Design Full Course"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorie.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomBottomRecommended(categoryModel: categorie[index]),
            );
          }),
    );
  }
}
