import 'package:fallgram/path_images.dart';
import 'package:flutter/material.dart';

class GridGramImage extends StatelessWidget {
  final bool? isActive;
  final int? itemCountGrid;
  // final String? imgUrl;
  const GridGramImage({
    Key? key,
    this.isActive,
    required this.itemCountGrid,
    // this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: unsplashImage.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: itemCountGrid!,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemBuilder: (BuildContext context, int index) => Image.network(
        unsplashImage.elementAt(index),
        fit: BoxFit.cover,
      ),
    );
  }
}
