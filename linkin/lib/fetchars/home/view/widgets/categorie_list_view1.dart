import 'package:flutter/material.dart';
import 'package:linkin/fetchars/home/model/category_model.dart';
import 'package:linkin/fetchars/home/view/widgets/custom_bottom.dart';
import 'package:linkin/utils/assets.dart';

class CategoriesListView1 extends StatelessWidget {
  const CategoriesListView1({
    super.key,
  });
  final List<CategoryModel> categorie = const [
    CategoryModel(image: AssetsData.ux, categoryname: "Ui Ux Design"),
    CategoryModel(image: AssetsData.web, categoryname: "Web Develop..."),
    CategoryModel(image: AssetsData.app, categoryname: "Mobile Devel..."),
    CategoryModel(image: AssetsData.cyber, categoryname: "Cyber Securit..."),
    CategoryModel(image: AssetsData.social, categoryname: "Digital Marke..."),
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
