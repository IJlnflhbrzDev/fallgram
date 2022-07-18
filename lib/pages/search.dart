import 'package:fallgram/path_images.dart';
import 'package:fallgram/widgets/search_input_gram.dart';
import 'package:flutter/material.dart';

class SearchPagesGram extends StatelessWidget {
  const SearchPagesGram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SearchInputGram(heightInput: 50),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: unsplashImageSearch.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                    ),
                    itemBuilder: (BuildContext context, int index) =>
                        Image.network(unsplashImageSearch.elementAt(index),
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
