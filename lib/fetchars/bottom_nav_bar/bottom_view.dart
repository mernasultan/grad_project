import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:linkin/fetchars/community/view/community_view.dart';
import 'package:linkin/fetchars/home/view/home_view.dart';
import 'package:linkin/fetchars/my_courses/view/my_courses_view.dart';
import 'package:linkin/fetchars/profile_user/view/profile_user_view.dart';

// google_nav_bar: ^5.0.6
class CustomGoogleNavBar extends StatefulWidget {
  const CustomGoogleNavBar({super.key});

  @override
  State<CustomGoogleNavBar> createState() => _CustomGoogleNavBarState();
}

class _CustomGoogleNavBarState extends State<CustomGoogleNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const [
          HomeView(),
          MyCoursesView(),
          CommunityView(),
          ProfileUserView(),
        ][selectedIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Color(0xffC6C6C6),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: const Color(0xff4547EB),
                color: const Color(0xffC6C6C6),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.video_library,
                    iconSize: 24,
                    textSize: 10,
                    text: 'My Courses',
                  ),
                  GButton(
                    icon: Icons.people_outline,
                    text: 'Community',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
