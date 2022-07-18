import 'package:fallgram/path_images.dart';
import 'package:fallgram/theme.dart';
import 'package:fallgram/widgets/count_profile.dart';
import 'package:fallgram/widgets/grid_gram_image.dart';
import 'package:fallgram/widgets/info_profile.dart';
import 'package:fallgram/widgets/profile_picture.dart';
import 'package:fallgram/widgets/story_higlight.dart';
import 'package:fallgram/widgets/tab_gram.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileGram extends StatelessWidget {
  const ProfileGram({Key? key}) : super(key: key);

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
            child: Image.asset('assets/burger.png', height: 25, width: 25),
          ),
          const SizedBox(width: 18),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 6),
          Padding(
            padding: EdgeInsets.only(left: padContainer, right: padContainer),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProfilePicture(),
                  Row(
                    children: [
                      CountProfile(title: 'Posts', count: '999'),
                      const SizedBox(
                        width: 33,
                      ),
                      CountProfile(title: 'Followers', count: '99.9M'),
                      const SizedBox(
                        width: 33,
                      ),
                      CountProfile(title: 'Following', count: '99.9K'),
                    ],
                  )
                ]),
          ),
          const SizedBox(height: 10),
          Padding(
              padding: EdgeInsets.only(left: padContainer, right: padContainer),
              child: const InfoProfile()),
          Container(
              padding: EdgeInsets.only(
                  top: 4, left: padContainer, right: padContainer),
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: storyPictures.length,
                  itemBuilder: (BuildContext context, int index) {
                    return StoryHighlight(
                      isActiveChangeBorderColor: false,
                      highlightTitle: 'Story ${index + 1}',
                      highlightImage: storyPictures.elementAt(index),
                    );
                  })),
          Row(
            children: const [
              TabGram(
                icon: Icons.grid_on_sharp,
                isActive: true,
              ),
              TabGram(
                icon: Icons.person_pin_outlined,
                isActive: false,
              ),
            ],
          ),
          const GridGramImage(itemCountGrid: 3),
        ],
      ),
    );
  }
}
