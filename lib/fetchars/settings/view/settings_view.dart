import 'package:flutter/material.dart';
import 'package:linkin/fetchars/instructor/view/instructor_view.dart';
import 'package:linkin/fetchars/reminder/view/reminder_view.dart';
import 'package:linkin/config/utils/assets.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Setting",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AssetsData.user4,
                width: 70,
                height: 70,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
                child: Text(
              "hassan hussein",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 353,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const InstructorView();
                      }));
                    },
                    child: const Text(
                      "Become An Instructor",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4547EB)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Icon(
                      Icons.person,
                      size: 24,
                      color: Color(0xff4547EB),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Account",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Make Changes To Your Account",
                      style: TextStyle(
                          color: Color(0xff999999),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 110,
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 20,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Icon(
                      Icons.notifications,
                      size: 24,
                      color: Color(0xff4547EB),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Notifications",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 205,
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 20,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Icon(
                      Icons.alarm,
                      size: 24,
                      color: Color(0xff4547EB),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ReminderView();
                    }));
                  },
                  child: const Text(
                    "Reminder",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 210,
                ),
                const Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Icon(
                      Icons.help_outline,
                      size: 24,
                      color: Color(0xff4547EB),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Help & Support",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 190,
                ),
                const Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Icon(
                      Icons.info_outline,
                      size: 24,
                      color: Color(0xff4547EB),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "About App",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 220,
                ),
                const Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ClipOval(
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.grey.shade100,
                    child: const Icon(
                      Icons.logout,
                      size: 24,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Log out",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 235,
                ),
                const Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
