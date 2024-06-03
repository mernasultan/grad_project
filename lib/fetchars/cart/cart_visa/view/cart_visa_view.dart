import 'package:flutter/material.dart';
import 'package:linkin/config/utils/assets.dart';

import '../../cart_successfully/view/cart_successfully_view.dart';

class CartVisaView extends StatelessWidget {
  const CartVisaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Check Out",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Summary',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "subtotal",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "5000 EGP",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "100 EGP",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "4900 EGP",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            "Payment Information",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                AssetsData.frame12,
                width: 107,
                height: 60,
              ),
              Image.asset(
                AssetsData.frame11,
                width: 107,
                height: 60,
              ),
              Image.asset(
                AssetsData.frame13,
                width: 107,
                height: 60,
              )
            ],
          ),
          const SizedBox(
            height: 41,
          ),
          const Text(
            "Card Details",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 353,
              height: 52,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: 'Card Holder Name',
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC6C6C6))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFE786C)))),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 353,
              height: 52,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: 'Card Number',
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffC6C6C6))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFE786C)))),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 198,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: 'Card Number',
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6C6C6))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffFE786C)))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 139,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: 'Cvv',
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffC6C6C6))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffFE786C)))),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 45,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CartSuccessfullyView();
                  }));
                },
                child: const Text(
                  "Confirm Payment",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
          ),
        ]),
      ),
    );
  }
}
