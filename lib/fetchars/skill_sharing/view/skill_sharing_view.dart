import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkin/fetchars/skill_sharing/view/widgets/custom_list_view_builder.dart';

class SkillSharingView extends StatelessWidget {
  const SkillSharingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Skill Sharing",
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
                height: 20,
              ),
              const Text(
                "Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 114,
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xfff8f8f8),
                    ),
                    child: const Center(
                      child: Text(
                        "UI UX Design",
                        style: TextStyle(
                            color: Color(0xff696767),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    width: 148,
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xfff8f8f8),
                    ),
                    child: const Center(
                      child: Text(
                        "Web Development",
                        style: TextStyle(
                            color: Color(0xff696767),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    width: 114,
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xfff8f8f8),
                    ),
                    child: const Center(
                      child: Text(
                        "data science",
                        style: TextStyle(
                            color: Color(0xff696767),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              const CustomListViewBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
