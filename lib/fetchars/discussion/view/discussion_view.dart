import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkin/config/utils/assets.dart';

class DiscussionView extends StatelessWidget {
  const DiscussionView({super.key});

  get o => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("3 Discussion"),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(AssetsData.ellipse),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "User Name",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Text(
                "Lorem lqsum Dolor Sit Amet, Consec Adipiscing Elit, Dolore Magna Aliquam Erat Volutpat. Lorem iqusm Dolor Sit Amet, Consectetuer Lorem Iqusm Adipiscing Elit,Dolore Magna Aliquam Erat Volutpat",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(FontAwesomeIcons.thumbsUp),
                  SizedBox(
                    width: 20,
                  ),
                  // ignore: deprecated_member_use
                  Icon(FontAwesomeIcons.commenting),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "2Replies",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(children: [
                          ClipOval(
                            child: Image.asset(
                              AssetsData.user1,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "User Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                        const Text(
                          "Lorem ipsum Dolor Sit Amet, Consec Adipiscing Elit, Dolore Magna Aliquam Erat Volutpot.Lorem iqsum Dolore Magna Ailquam Eart Volutpat.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(children: [
                          ClipOval(
                            child: Image.asset(
                              AssetsData.user2,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "User Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                        const Text(
                          "Lorem ipsum Dolor Sit Amet, Consec Adipiscing Elit, Dolore Magna Aliquam Erat Volutpot.Lorem iqsum Dolore Magna Ailquam Eart Volutpat.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset(AssetsData.ellipse),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "User Name",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Text(
                "Lorem lqsum Dolor Sit Amet, Consec Adipiscing Elit, Dolore Magna Aliquam Erat Volutpat. Lorem iqusm Dolor Sit Amet, Consectetuer Lorem Iqusm Adipiscing Elit,Dolore Magna Aliquam Erat Volutpat",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Icon(FontAwesomeIcons.thumbsUp),
                  SizedBox(
                    width: 20,
                  ),
                  // ignore: deprecated_member_use
                  Icon(FontAwesomeIcons.commenting),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "2Replies",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(children: [
                          ClipOval(
                            child: Image.asset(
                              AssetsData.user1,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "User Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                        const Text(
                          "Lorem ipsum Dolor Sit Amet, Consec Adipiscing Elit, Dolore Magna Aliquam Erat Volutpot.Lorem iqsum Dolore Magna Ailquam Eart Volutpat.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    width: 350,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(children: [
                          ClipOval(
                            child: Image.asset(
                              AssetsData.user2,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Text(
                            "User Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                        const Text(
                          "Lorem ipsum Dolor Sit Amet, Consec Adipiscing Elit, Dolore Magna Aliquam Erat Volutpot.Lorem iqsum Dolore Magna Ailquam Eart Volutpat.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
