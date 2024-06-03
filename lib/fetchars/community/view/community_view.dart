import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkin/fetchars/community/view/widgets/custom_view_builder.dart';
import 'package:linkin/config/utils/assets.dart';

import '../../skill_sharing/view/skill_sharing_view.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Community",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: 353,
                  height: 52,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(4)),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC6C6C6)),
                      ),
                      hintText: 'Search here',
                      hintStyle: const TextStyle(
                          fontSize: 16, color: Color(0xff696767)),
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Opacity(
                            opacity: .8,
                            child: Icon(
                              FontAwesomeIcons.magnifyingGlass,
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Skill Sharing",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SkillSharingView();
                      }));
                    },
                    child: const Text(
                      "View All",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff999999),
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              const CustomViewBuilder(),
              const Divider(),
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
              const Divider(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 52,
          height: 52,
          color: const Color(0xff4547eb),
          child: const Icon(
            Icons.add,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
