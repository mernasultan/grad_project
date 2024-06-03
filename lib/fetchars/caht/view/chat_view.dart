import 'package:flutter/material.dart';
import 'package:linkin/config/utils/assets.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff4547EB),
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                AssetsData.user2,
                width: 32,
                height: 32,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Jehad adili",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: const [
          Text(
            "Typing...",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Container(
              width: 51,
              height: 22,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(6)),
              child: const Center(
                child: Text(
                  "Todoy",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 280),
            child: Container(
              width: 114,
              height: 36,
              decoration: BoxDecoration(
                  color: const Color(0xff4547EB),
                  borderRadius: BorderRadius.circular(6)),
              child: const Center(
                child: Text(
                  "Hello! Ali Hassan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 350),
            child: Text(
              "09:25 AM",
              style: TextStyle(
                  color: Color(0xff696767),
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    AssetsData.user2,
                    width: 32,
                    height: 32,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 190,
                  height: 36,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Hello ! salma How are you?",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60),
            child: Text(
              "09:25 AM",
              style: TextStyle(
                  color: Color(0xff696767),
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Container(
              width: 260,
              height: 36,
              decoration: BoxDecoration(
                  color: const Color(0xff4547EB),
                  borderRadius: BorderRadius.circular(6)),
              child: const Center(
                child: Text(
                  "how can i design a responsive page in figma",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 350),
            child: Text(
              "09:25 AM",
              style: TextStyle(
                  color: Color(0xff696767),
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    AssetsData.user2,
                    width: 32,
                    height: 32,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 244,
                  height: 114,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "use frames, which are containers that define the boundaries and dimensions of your design elements. You can use frames to create different layouts and breakpoints for different devices and screen sizes.",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60),
            child: Text(
              "09:25 AM",
              style: TextStyle(
                  color: Color(0xff696767),
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          SizedBox(
            width: 380,
            height: 40,
            child: Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                const Icon(
                  Icons.sentiment_satisfied,
                  size: 20,
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 245,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      "Write your message",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.camera_alt,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.voice_chat_sharp,
                  size: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
