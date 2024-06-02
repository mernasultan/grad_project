import 'package:flutter/material.dart';
import 'package:linkin/fetchars/cart/cart_seleckt/view/widgets/custom_container_cart.dart';
import 'package:linkin/utils/assets.dart';

import '../../model/cart_model.dart';

class CustomBuliderCart extends StatefulWidget {
  const CustomBuliderCart({super.key});

  @override
  State<CustomBuliderCart> createState() => _CustomBuliderCartState();
}

class _CustomBuliderCartState extends State<CustomBuliderCart> {
  List<CartModel> list = [
    CartModel(
        text: "UI UX Design Full Course",
        image: AssetsData.course,
        name: "Ehab Fayez"),
    CartModel(
        text: "Java Script From Zero To Hero",
        image: AssetsData.labtop,
        name: "Osama Eizero"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(list[index].text),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
              } else {}
              setState(() {
                list.removeAt(index);
              });
            },
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Confirm Remove'),
                    content: const Text(
                        'Are you sure you want to remove this item? '),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text("Delete")),
                      TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text("Cancel")),
                    ],
                  );
                },
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
                size: 25,
              ),
            ),
            child: CustomContainerCart(
              cartModel: list[index],
            ),
          );
        },
      ),
    );
  }
}
