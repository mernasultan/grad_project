import 'package:flutter/material.dart';
import 'package:linkin/config/utils/assets.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "1 Note",
              style: TextStyle(
                color: Color(0xff696767),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              AssetsData.note,
              width: 353,
              height: 233,
            )
          ],
        ),
      ),
    );
  }
}
