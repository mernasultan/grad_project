import 'package:flutter/material.dart';

class CustomEducation extends StatefulWidget {
  const CustomEducation({super.key});

  @override
  State<CustomEducation> createState() => _CustomEducationState();
}

class _CustomEducationState extends State<CustomEducation> {
  List<String> itemsList = ["web", "ui", "flutter"];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Education",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff202020)),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 16),
          width: 353,
          height: 52,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: const Color(0xffC6C6C6)),
              borderRadius: BorderRadius.circular(4)),
          child: DropdownButton(
            hint: const Text("Bachelor Degree"),
            dropdownColor: Colors.white,
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
        ),
      ],
    );
  }
}
