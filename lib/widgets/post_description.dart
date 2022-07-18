// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:fallgram/path_images.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class PostDescription extends StatelessWidget {
  final controller;
  final current;
  final isCta;
  final imgUrl;
  const PostDescription(
      {Key? key, this.controller, this.current, this.isCta, this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isCta == true
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      GestureDetector(
                        child: Image.asset('assets/heart.png', width: 24),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        child: Image.asset('assets/comment.png', width: 24),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        child: Image.asset('assets/share.png', width: 24),
                      ),
                    ]),
                    const SizedBox(width: 65),
                    GestureDetector(
                      child: Image.asset('assets/bookmark.png', width: 24),
                    ),
                  ],
                ),
              ),
              // description
              Container(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 8.0, right: 8.0, bottom: 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('100 Likes',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 3,
                      style: TextStyle(height: 1.3, color: Colors.black),
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(
                          color: Color(0xff999999),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 35,
                          height: 35,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              '$imgUrl',
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const SizedBox(
                          width: 265,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                label: Text('Add Comment...',
                                    style: TextStyle(fontSize: 15)),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset('assets/emoji1.png', width: 18)),
                          const SizedBox(width: 5),
                          GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset('assets/emoji2.png', width: 18)),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.add_circle_outline,
                              color: Color(0xff999999),
                              size: 19,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 2.0, left: 8.0, right: 8.0),
                child: Text('10 minutes ago',
                    style: TextStyle(color: Color(0xff999999))),
              )
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 5),
                    Row(children: [
                      GestureDetector(
                        child: Image.asset('assets/heart.png', width: 24),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        child: Image.asset('assets/comment.png', width: 24),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        child: Image.asset('assets/share.png', width: 24),
                      ),
                    ]),
                    const SizedBox(width: 65),
                    Expanded(
                      child: Row(
                        children: unsplashImage.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => controller.animateToPage(entry.key),
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : const Color(0xffC4C4C4))
                                      // ignore: unrelated_type_equality_checks
                                      .withOpacity(
                                          current == entry.key ? 0.9 : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    GestureDetector(
                      child: Image.asset('assets/bookmark.png', width: 24),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ),

              // description
              Container(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 8.0, right: 8.0, bottom: 2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('100 Likes',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 3,
                      style: TextStyle(height: 1.3, color: Colors.black),
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(
                          color: Color(0xff999999),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 35,
                          height: 35,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              '$imgUrl',
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const SizedBox(
                          width: 265,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                label: Text('Add Comment...',
                                    style: TextStyle(fontSize: 15)),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset('assets/emoji1.png', width: 18)),
                          const SizedBox(width: 5),
                          GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset('assets/emoji2.png', width: 18)),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.add_circle_outline,
                              color: Color(0xff999999),
                              size: 19,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 2.0, left: 8.0, right: 8.0),
                child: Text('10 minutes ago',
                    style: TextStyle(color: Color(0xff999999))),
              )
            ],
          );
  }
}
