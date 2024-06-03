import 'package:flutter/material.dart';

class CustomTabBarBody extends StatefulWidget implements PreferredSizeWidget {
  const CustomTabBarBody({
    super.key,
  });

  @override
  State<CustomTabBarBody> createState() => _CustomTabBarBodyState();

  @override
  Size get preferredSize => const Size.fromHeight(40);
}

class _CustomTabBarBodyState extends State<CustomTabBarBody> {
  @override
  Widget build(BuildContext context) {
    return const TabBar(
      isScrollable: true,
      dividerHeight: 2,
      unselectedLabelStyle:
          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      unselectedLabelColor: Color(0xffA2A1A4),
      labelStyle: TextStyle(
          color: Color(0xff4547EB), fontSize: 15, fontWeight: FontWeight.bold),
      labelColor: Color(0xff4547EB),
      tabs: [
        Tab(
          height: 50,
          child: Text('Overview'),
        ),
        Tab(
          height: 50,
          child: Text('Content'),
        ),
        Tab(
          height: 50,
          child: Text('Discussion'),
        ),
        Tab(
          height: 50,
          child: Text('Projects'),
        ),
        Tab(
          height: 50,
          child: Text('Notes'),
        ),
      ],
    );
  }
}
