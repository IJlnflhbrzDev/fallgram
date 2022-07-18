import 'package:carousel_slider/carousel_slider.dart';
import 'package:fallgram/path_images.dart';
import 'package:fallgram/pages/profile.dart';
import 'package:fallgram/widgets/post_description.dart';
import 'package:fallgram/widgets/slide_img.dart';
import 'package:fallgram/widgets/story_higlight.dart';
import 'package:fallgram/widgets/user_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _current = 0;
  final CarouselController _controller = CarouselController();

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // hide boxshadow appbar
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
          color: Colors.black,
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'Fallgram',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black,
              size: 19,
            )
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(const ProfileGram());
            },
            child: Image.asset('assets/add.png', height: 25, width: 25),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              Get.to(const ProfileGram());
            },
            child: Image.asset('assets/heart.png', height: 25, width: 25),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              Get.to(const ProfileGram());
            },
            child: Image.asset('assets/messenger.png', height: 25, width: 25),
          ),
          const SizedBox(width: 18),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 4,
              left: 8,
            ),
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: storyPictures.length,
              itemBuilder: (BuildContext context, int index) {
                return StoryHighlight(
                    highlightImage: storyPictures.elementAt(index),
                    highlightTitle: index != 0 ? 'Story $index' : 'IJlnflhbrz');
              },
            ),
          ),
          Divider(
            color: Colors.grey[200],
            thickness: 1,
          ),
          // post 1
          Column(
            children: [
              const UserHeader(
                isSponsore: false,
                name: 'IJlnflhbrz',
                imgUrl: 'assets/profile.png',
              ),
              const SlideImagePost(),
              PostDescription(
                controller: _controller,
                current: _current,
                isCta: true,
                imgUrl: 'assets/profile.png',
              ),
            ],
          ),
          const SizedBox(height: 30),
          // post 2
          Column(
            children: [
              const UserHeader(
                isSponsore: true,
                name: 'Naufal Hibrizi',
                imgUrl: 'assets/story3.png',
              ),
              const SlideImagePost(),
              GestureDetector(
                onTap: () {
                  Get.defaultDialog(title: 'CTA ON PROGRESS');
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xffFF4963),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('CTA copy here',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      Icon(Icons.chevron_right, color: Colors.white)
                    ],
                  ),
                ),
              ),
              PostDescription(
                controller: _controller,
                current: _current,
                isCta: true,
                imgUrl: 'assets/story3.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
