import 'package:flutter/material.dart';

class CustomFileld extends StatefulWidget {
  const CustomFileld({super.key});

  @override
  State<CustomFileld> createState() => _CustomFileldState();
}

class _CustomFileldState extends State<CustomFileld> {
  List<String> itemsList = [];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 16),
      width: 353,
      height: 52,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffC6C6C6)),
          borderRadius: BorderRadius.circular(4)),
      child: DropdownButton(
        hint: const Text("Field"),
        dropdownColor: const Color(0xff696767),
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 24,
        isExpanded: true,
        underline: const SizedBox(),
        value: selectedItem,
        onChanged: (newValue) {
          setState(() {
            selectedItem = newValue;
          });
        },
        items: itemsList
            .map((item) => DropdownMenuItem(
                value: item,
                child: Text(
                  item,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400),
                )))
            .toList(),
      ),
    );
  }
}
