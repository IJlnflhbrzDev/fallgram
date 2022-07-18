import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class ReelsContentDescription extends StatefulWidget {
  const ReelsContentDescription({Key? key}) : super(key: key);

  @override
  State<ReelsContentDescription> createState() =>
      _ReelsContentDescriptionState();
}

class _ReelsContentDescriptionState extends State<ReelsContentDescription> {
  Color isFavorite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CircleAvatar(
                        radius: 16,
                        child: Icon(Icons.person, size: 18),
                      ),
                    ),
                    const Text(
                      'FallDevAcademy.id',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Icon(Icons.verified, size: 17, color: Colors.blue[600]),
                    const SizedBox(width: 8),
                    SizedBox(
                      height: 22,
                      child: OutlinedButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(120),
                            ),
                            side: const BorderSide(color: Colors.white)),
                        onPressed: () {},
                        child: const Text(
                          'Ikuti',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  width: Get.width * .8,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 5.0),
                  child: InkWell(
                    onTap: () {},
                    child: const ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 1,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'more',
                      trimExpandedText: 'less',
                      moreStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          height: 1.5),
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 8.0,
                    bottom: 10,
                    right: 8.0,
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                      ),
                      Text(
                        'Music Song ~ Audio Asli',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        isFavorite = Colors.red;
                      });
                    },
                    child: Icon(Icons.favorite, size: 30, color: isFavorite)),
                const SizedBox(height: 8),
                const Text('999k', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 25),
                const Icon(Icons.comment_rounded,
                    size: 30, color: Colors.white),
                const SizedBox(height: 8),
                const Text('999k', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 32),
                // Routate Icons
                Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                    )),
                const SizedBox(height: 30),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                const SizedBox(height: 30),
              ]),
            )
          ],
        )
      ],
    );
  }
}
