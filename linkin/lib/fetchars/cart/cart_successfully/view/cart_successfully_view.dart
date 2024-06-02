import 'package:flutter/material.dart';
import 'package:linkin/utils/assets.dart';

class CartSuccessfullyView extends StatelessWidget {
  const CartSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Center(
            child: Image.asset(
              AssetsData.cart,
              width: 211,
              height: 251.45,
            ),
          ),
          const SizedBox(
            height: 55,
          ),
          const Text(
            "Payment Done Successfully",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "You have successfully paid and you can now return to the course and start learning",
              style: TextStyle(
                  color: Color(0xff686767),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              maxLines: 2,
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Container(
            width: 353,
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xff4547EB),
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text(
                  "Confirm Payment",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
          ),
        ],
      ),
    );
  }
}
