import 'package:flutter/material.dart';

import '../../../search/view/search_view.dart';

class CustomBodyHome extends StatelessWidget {
  const CustomBodyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "hello 👋",
                style: TextStyle(
                    color: Color(0xff999999),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "salma khaled",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(width: 200),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SearchView();
            }));
          },
          child: const Icon(
            Icons.search,
            size: 36,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Icon(
          Icons.shopping_cart_outlined,
          size: 36,
        ),
      ],
    );
  }
}
