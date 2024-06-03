import 'package:flutter/material.dart';
import 'package:linkin/fetchars/home/model/category_model.dart';
import 'package:linkin/fetchars/home/view/widgets/custom_bottom.dart';
import 'package:linkin/config/utils/assets.dart';

class CategoriesListView2 extends StatelessWidget {
  const CategoriesListView2({
    super.key,
  });
  final List<CategoryModel> categorie = const [
    CategoryModel(image: AssetsData.machine, categoryname: "Machine Le..."),
    CategoryModel(image: AssetsData.data, categoryname: "Data Science"),
    CategoryModel(image: AssetsData.big, categoryname: "Big Data"),
    CategoryModel(image: AssetsData.analysis, categoryname: "System Analy..."),
    CategoryModel(image: AssetsData.server, categoryname: "Data Base"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorie.length,
          itemBuilder: (context, index) {
            return CustomBottom(categorymodel: categorie[index]);
          }),
    );
  }
}
