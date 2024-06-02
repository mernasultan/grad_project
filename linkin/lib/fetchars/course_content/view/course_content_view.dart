import 'package:flutter/material.dart';
import 'package:linkin/fetchars/course_content/view/widgets/custom_app_bar_course.dart';
import 'package:linkin/fetchars/course_content/view/widgets/custom_tab_bar_body.dart';
import 'package:linkin/utils/assets.dart';

import '../../content/view/content_view.dart';
import '../../discussion/view/discussion_view.dart';
import '../../notes/view/notes_view.dart';
import '../../overview/view/overview.dart';
import '../../projects/view/projects_view.dart';

class CourseContentView extends StatefulWidget {
  const CourseContentView({super.key});

  @override
  State<CourseContentView> createState() => _CourseContentViewState();
}

class _CourseContentViewState extends State<CourseContentView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 250,
          iconTheme: const IconThemeData(size: 0),
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(AssetsData.back)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 150),
              child: Image.asset(
                AssetsData.frame,
                width: 32,
                height: 32,
              ),
            ),
          ],
          flexibleSpace: const CustomAppBarCoures(),
          bottom: const CustomTabBarBody(),
        ),
        body: const TabBarView(children: [
          OverView(),
          ContentView(),
          DiscussionView(),
          ProjectsView(),
          NotesView(),
        ]),
      ),
    );
  }
}
