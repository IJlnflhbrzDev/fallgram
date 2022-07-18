import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountProfile extends StatelessWidget {
  late String? title;
  late String? count;
  CountProfile({Key? key, this.title, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$count',
          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          '$title',
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
