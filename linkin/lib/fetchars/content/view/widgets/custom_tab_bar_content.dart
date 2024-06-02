import 'package:flutter/material.dart';

class CustomTabBarContent extends StatefulWidget
    implements PreferredSizeWidget {
  const CustomTabBarContent({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  State<CustomTabBarContent> createState() => _CustomTabBarContentState();

  @override
  Size get preferredSize => const Size.fromHeight(40);
}

class _CustomTabBarContentState extends State<CustomTabBarContent> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      child: TabBar(
        dividerHeight: 0,
        isScrollable: false,
        padding: EdgeInsets.only(right: 1, left: 10),
        indicatorPadding: EdgeInsets.fromLTRB(-20, 0, -20, 0),
        unselectedLabelStyle:
            TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        unselectedLabelColor: Colors.black,
        labelStyle: TextStyle(
            color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
        labelColor: Colors.white,
        indicator: BoxDecoration(color: Color(0xffFE786C)),
        tabs: [
          Tab(
            child: Text('Section 1'),
          ),
          Tab(
            height: 50,
            child: Text('Section 2'),
          ),
          Tab(
            height: 50,
            child: Text('Section 3'),
          ),
          Tab(
            height: 50,
            child: Text('Section 4'),
          ),
          Tab(
            height: 50,
            child: Text('Section 5'),
          ),
        ],
      ),
    );
  }
}
