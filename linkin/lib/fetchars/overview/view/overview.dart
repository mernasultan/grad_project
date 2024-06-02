import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkin/fetchars/cart/cart_seleckt/view/cart_view.dart';
import 'package:linkin/fetchars/overview/view/widgets/custom_body_coment.dart';
import 'package:linkin/utils/assets.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "UIUX Design Full Course",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 73,
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: const Color(0xffFFF2F0)),
                    child: const Center(
                      child: Text(
                        "Beginner",
                        style: TextStyle(
                            color: Color(0xffFE786C),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Text('4.7',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff696767))),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 87,
                  height: 21,
                  child: Row(
                    children: [
                      Icon(
                          FontAwesomeIcons
                              .solidStar, // استخدام أيقونة النجمة الممتلئة
                          size: 15,
                          color: Colors.amber),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                          FontAwesomeIcons
                              .solidStar, // استخدام أيقونة النجمة الممتلئة
                          size: 15,
                          color: Colors.amber),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                          FontAwesomeIcons
                              .solidStar, // استخدام أيقونة النجمة الممتلئة
                          size: 15,
                          color: Colors.amber),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                          FontAwesomeIcons
                              .solidStar, // استخدام أيقونة النجمة الممتلئة
                          size: 15,
                          color: Colors.amber),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                          FontAwesomeIcons
                              .solidStarHalf, // استخدام أيقونة النجمة الممتلئة
                          size: 15,
                          color: Colors.amber),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "(23,100)",
                  style: TextStyle(
                      fontSize: 10,
                      color: Color(0xff999999),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Description",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consec adipiscing elit, dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet, consectetuer lorem ipsum adipiscing elit, dolore magna aliquam erat volutpat. more ... ",
              style: TextStyle(
                color: Color(0xff696767),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 4, // Set maxLines to 4
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Created By",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset(AssetsData.ellipse),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ehab Fayez",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Senior Ui Ux Designer",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff696767)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Information",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "12h 35m",
                  style: TextStyle(
                      color: Color(0xff696767),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 150,
                ),
                Icon(
                  Icons.chrome_reader_mode_rounded,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "chapter",
                  style: TextStyle(
                      color: Color(0xff696767),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Icons.people,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "45 students",
                  style: TextStyle(
                      color: Color(0xff696767),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 135,
                ),
                Icon(
                  Icons.reviews_sharp,
                  size: 16,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "350 reviews",
                  style: TextStyle(
                      color: Color(0xff696767),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "What You Will Learn",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(
                text: "Lorem Ipsum Dolor Sit Amet, Consec Adipiscing Elit."),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(text: "Lorem Ipsum Dolor Sit Amet."),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(
                text: "Lorem Ipsum Dolor Sit Amet,Consec Adipiscing Elit."),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(
                text: "Lorem Ipsum Dolor Sit Amet, Consec Adipiscing Elit."),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(text: "Lorem Ipsum Dolor Sit Amet."),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Prerequisites",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(
                text: "Lorem Ipsum Dolor Sit Amet, Consec Adipiscing Elit."),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(text: "Lorem Ipsum Dolor Sit Amet."),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(
                text: "Lorem Ipsum Dolor Sit Amet,Consec Adipiscing Elit."),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(
                text: "Lorem Ipsum Dolor Sit Amet, Consec Adipiscing Elit."),
            const SizedBox(
              height: 5,
            ),
            const CustombodyComent(text: "Lorem Ipsum Dolor Sit Amet."),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Price",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const Text(
              "500 EGP",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 353,
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xff4547EB),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CartView();
                      }));
                    },
                    child: const Text(
                      "Add To Cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
