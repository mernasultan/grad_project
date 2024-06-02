import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomTabBar({
    super.key,
    required this.controller,
  });
  final TabController controller;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();

  @override
  Size get preferredSize => const Size.fromHeight(40);
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 12),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          bottom: 4,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
              // دا البوردر الكبير اللي على ال تاب بار كلو
              border: Border.all(
                color: const Color.fromARGB(255, 224, 211, 211),
              ),
              borderRadius: BorderRadius.circular(36)),
          // من هنا كدا ابدأ أتحكم في التاب بار بتاعي زاي منا عاوز
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: TabBar(
              controller: widget.controller,
              dividerHeight: 0,

              padding: const EdgeInsets.only(bottom: 6, top: 6, right: 6),
              indicatorPadding: const EdgeInsets.fromLTRB(-35, 0, -35, 0),
              unselectedLabelStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              unselectedLabelColor: const Color(0xffA2A1A4),
              // indicatorPadding: EdgeInsets.,
              labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              labelColor: Colors.white,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  color: const Color(0xff4547EB)),
              tabs: const [
                Tab(
                  height: 50,
                  child: Text('Svaed'),
                ),
                Tab(
                  height: 50,
                  child: Text('OnGoing'),
                ),
                Tab(
                  height: 50,
                  child: Text('Completed'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
