import 'package:flutter/material.dart';
import 'package:linkin/fetchars/home/view/widgets/categorie_list_view1.dart';
import 'package:linkin/fetchars/home/view/widgets/categorie_list_view2.dart';
import 'package:linkin/fetchars/home/view/widgets/categorie_list_view3.dart';

import 'package:linkin/fetchars/home/view/widgets/custom_body_home.dart';
import 'package:linkin/fetchars/home/view/widgets/custom_contianer_home.dart';
import 'package:linkin/fetchars/home/view/widgets/custom_desian_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            CustomBodyHome(),
            SizedBox(
              height: 40,
            ),
            CustomContianerHome(),
            SizedBox(
              height: 15,
            ),
            CustomDesianHome(
              text: "Categories",
              titel: "View All",
            ),
            SizedBox(
              height: 5,
            ),
            CategoriesListView1(),
            SizedBox(
              height: 5,
            ),
            CategoriesListView2(),
            SizedBox(
              height: 15,
            ),
            CustomDesianHome(
              text: "Recommended For You",
              titel: "View All",
            ),
            CategoriesListView3(),
            SizedBox(
              height: 15,
            ),
            CustomDesianHome(
              text: "Most Popular",
              titel: "View All",
            ),
            CategoriesListView3(),
          ],
        ),
      ),
    );
  }
}
