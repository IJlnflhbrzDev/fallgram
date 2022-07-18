import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReelsContent extends StatelessWidget {
  final String? src;
  const ReelsContent({Key? key, required this.src}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: [
        Image.network(
          src!,
          width: Get.width,
          height: Get.height,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
