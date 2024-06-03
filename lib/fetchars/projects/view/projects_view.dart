import 'package:flutter/material.dart';
import 'package:linkin/config/utils/assets.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Project Details",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Lorem ipsum dolor sit amet, consec adipiscing elit, dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer lorem ipsum adipiscing elit, dolore magna aliquam erat volutpat....more",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff696767)),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "All Projects",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                AssetsData.project,
                width: 353,
                height: 244,
              ),
              const SizedBox(
                height: 5,
              ),
              Image.asset(
                AssetsData.project,
                width: 353,
                height: 244,
              )
            ],
          ),
        ),
      ),
    );
  }
}
