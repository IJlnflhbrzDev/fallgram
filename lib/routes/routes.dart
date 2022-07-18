import 'package:fallgram/pages/homepage.dart';
import 'package:fallgram/pages/profile.dart';
import 'package:fallgram/pages/reels.dart';
import 'package:fallgram/pages/search.dart';
import 'package:fallgram/pages/shop.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

List<Widget> screens = [
  const HomePage(),
  const SearchPagesGram(),
  const ReelsPages(),
  const ShopPagesGram(),
  const ProfileGram(),
];

class RoutesPages extends StatefulWidget {
  const RoutesPages({Key? key}) : super(key: key);

  @override
  State<RoutesPages> createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPages> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.white,
          color: Colors.grey[500],
          activeColor: Colors.black,
          style: TabStyle.reactCircle,
          initialActiveIndex: 0, //optional, default as 0
          onTap: (int index) => {
            setState(() {
              selectedIndex = index;
            })
          },
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.search, title: 'Search'),
            TabItem(icon: Icons.video_library_rounded, title: 'Reels'),
            TabItem(icon: Icons.shopping_bag_rounded, title: 'Shop'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
        ),
        body: screens[selectedIndex]);
  }
}
