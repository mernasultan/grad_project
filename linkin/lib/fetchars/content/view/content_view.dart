import 'package:flutter/material.dart';
import 'package:linkin/fetchars/content/view/widgets/custom_tab_bar_content.dart';

import '../../secthon/view/section_view.dart';

class ContentView extends StatefulWidget {
  const ContentView({super.key});

  @override
  State<ContentView> createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller.index = 0;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 30,
          bottom: CustomTabBarContent(controller: controller),
        ),
        body: TabBarView(
          controller: controller,
          children: const [
            SectionView(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('completef')),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('completed')),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('completed')),
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
