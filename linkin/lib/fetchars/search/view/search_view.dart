import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkin/fetchars/home/view/widgets/categorie_list_view1.dart';
import 'package:linkin/fetchars/home/view/widgets/categorie_list_view2.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: 353,
              height: 52,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffC6C6C6)),
                  ),
                  hintText: 'Search your course',
                  hintStyle:
                      const TextStyle(fontSize: 16, color: Color(0xff696767)),
                  suffixIcon: IconButton(
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
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text(
              "All Categories",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 1),
            child: CategoriesListView1(),
          ),
          const SizedBox(
            height: 5,
          ),
          const CategoriesListView2(),
        ],
      ),
    );
  }
}
