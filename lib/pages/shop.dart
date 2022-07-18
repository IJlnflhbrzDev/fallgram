import 'package:fallgram/pages/shop__detail.dart';
import 'package:fallgram/path_images.dart';
import 'package:fallgram/widgets/search_input_gram.dart';
import 'package:fallgram/widgets/widget_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPagesGram extends StatelessWidget {
  const ShopPagesGram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Toko',
                style: TextStyle(
                  color: Colors.black,
                )),
            Row(
              children: const [
                Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SearchInputGram(heightInput: 52),
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  WidgetButonn(textButton: 'Tokoo'),
                  WidgetButonn(textButton: 'Video'),
                  WidgetButonn(textButton: 'Pilihan Editor'),
                  WidgetButonn(textButton: 'Koleksi'),
                  WidgetButonn(textButton: 'Panduan'),
                  WidgetButonn(textButton: 'Barang Incaran'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: unsplashImageShop.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(const ShopDetail());
                  },
                  child: Image.network(
                    unsplashImageShop.elementAt(index),
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
