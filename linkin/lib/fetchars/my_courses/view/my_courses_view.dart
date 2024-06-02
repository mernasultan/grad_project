import 'package:flutter/material.dart';
import 'package:linkin/fetchars/my_courses/view/widgets/custom_container_body.dart';
import 'package:linkin/fetchars/my_courses/view/widgets/custom_tab_bar.dart';
import 'package:linkin/utils/assets.dart';

class MyCoursesView extends StatefulWidget {
  const MyCoursesView({super.key});

  @override
  State<MyCoursesView> createState() => _MyCoursesViewState();
}

class _MyCoursesViewState extends State<MyCoursesView>
    with SingleTickerProviderStateMixin {
  // Moved inside the _MyCoursesViewState class
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.index = 1;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.only(top: 14),
            child: Text(
              'My Courses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          bottom: CustomTabBar(controller: controller),
        ),
        body: TabBarView(
          controller: controller,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('saved')),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CustomContainerBody(
                        image: AssetsData.labtop,
                        bottom: "Continue Learning",
                        titel: "Java Script From Zero To Hero",
                        text: "Ahmed Ali"),
                    CustomContainerBody(
                        image: AssetsData.course,
                        bottom: "Continue Learning",
                        titel: "Ui Ux Design Full Course",
                        text: "Ahmed Ali"),
                  ],
                ),
              )),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('completed')),
            ),
          ],
        ),
      ),
    );
  }
}
