import 'package:carousel_slider/carousel_slider.dart';
import 'package:fallgram/path_images.dart';
import 'package:flutter/material.dart';

class SlideImagePost extends StatefulWidget {
  const SlideImagePost({
    Key? key,
  }) : super(key: key);

  @override
  State<SlideImagePost> createState() => _SlideImagePostState();
}

class _SlideImagePostState extends State<SlideImagePost> {
  var _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              viewportFraction: 1.1,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              height: 450.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index; // <-- Page index
                });
              }),
          items: unsplashImage.map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Color(0xffC4C4C4), shape: BoxShape.circle),
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Image.network(
                          '$i',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: unsplashImage.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
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
                                            _current == entry.key ? 0.9 : 0.4)),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
