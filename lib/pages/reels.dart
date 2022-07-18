import 'package:fallgram/widgets/reels_content_description.dart';
import 'package:fallgram/widgets/reels_content_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class ReelsPages extends StatelessWidget {
  const ReelsPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? whiteColors = Colors.white;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Content Screen Video
            // anda bisa gunakan package flutter_swiper untuk bisa di scroll2 atau geser2 kaya slider
            Swiper(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ReelsContent(
                  src: 'https://wallpapercave.com/wp/wp1068609${1 + index}.jpg',
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Reels',
                    style: TextStyle(
                      color: whiteColors,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: whiteColors,
                  ),
                ],
              ),
            ),
            const ReelsContentDescription()
          ],
        ),
      ),
    );
  }
}
