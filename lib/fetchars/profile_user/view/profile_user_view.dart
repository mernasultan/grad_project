import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkin/config/utils/assets.dart';

import '../../settings/view/settings_view.dart';

class ProfileUserView extends StatelessWidget {
  const ProfileUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              const Icon(
                Icons.message,
                size: 30,
              ),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SettingsView();
                    }));
                  },
                  icon: const Icon(
                    Icons.settings,
                    size: 30,
                  ))
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 11),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  AssetsData.user3,
                  width: 70,
                  height: 70,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Text(
                  "Jehad Adili",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Text(
                  "Ui Ux Designer",
                  style: TextStyle(
                      color: Color(0xff696767),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Text(
                  "56 Followers",
                  style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsData.many,
                    width: 23,
                    height: 23,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "120 Points",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "About",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consec adipiscing elit, dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff696767)),
                maxLines: 3,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Interested In",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    width: 83,
                    height: 31,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(
                      child: Text(
                        "Ui Ux Design",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 115,
                    height: 31,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(
                      child: Text(
                        "Web Development",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 353,
                height: 44,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Javascript Programming",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Icon(Icons.arrow_forward_ios_sharp)
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text(
                    "Projects",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                AssetsData.projectcard,
                width: 292,
                height: 202,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 330),
                child: Text(
                  "Post",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 353,
                height: 323,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AssetsData.user1,
                          width: 32,
                          height: 32,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ahmad Elsayed",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Job Title",
                              style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        const Icon(
                          Icons.add,
                          size: 10,
                          color: Color(0xff999999),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Follow",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "i am happy to share with you my latest achievementi've completed c++ course successfully",
                      style: TextStyle(
                          color: Color(0xff696767),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                      maxLines: 2,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 200,
                      width: 353,
                      color: const Color(0xffECEDFD),
                      child: Center(
                        child: Image.asset(
                          AssetsData.fancy1,
                          width: 258.71,
                          height: 200,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.thumbsUp,
                          size: 20,
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Icon(
                          // ignore: deprecated_member_use
                          FontAwesomeIcons.commenting,
                          size: 20,
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        Text(
                          "2 comments",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          FontAwesomeIcons.solidThumbsUp,
                          size: 20,
                          color: Color(0xff999999),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "30",
                          style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
