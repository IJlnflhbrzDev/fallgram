// ignore: file_names
// ignore_for_file: sort_child_properties_last, library_private_types_in_public_api

import 'package:fallgram/path_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopDetail extends StatelessWidget {
  const ShopDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Get.back()),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/profile.png',
                  width: 35,
                ),
                const SizedBox(width: 10),
                const Text(
                  'IJlnflhbrz',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.verified,
                  size: 17,
                  color: Colors.blue,
                )
              ],
            ),
            const Icon(Icons.more_vert_rounded, color: Colors.black)
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: unsplashImageShop.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.network(
                    unsplashImageShop.elementAt(index),
                    width: Get.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Text(
                      'Lorem ipsum dolor sit amet this is simple dumy text in here',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Wrap(
                          children: const [
                            Icon(Icons.send),
                            SizedBox(width: 10),
                            Icon(Icons.bookmark_border),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
              child: const Text(
                'Rp 39.000',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Lihat di Situs Web'),
              ),
            ),
            const ExpandingItems(),
            const SizedBox(height: 10),
            Container(
              color: Colors.white,
              width: Get.width,
              height: Get.height * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/profile.png', width: 55),
                          const SizedBox(width: 5),
                          SizedBox(
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'IJlnflhbrz Store',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                const Text(
                                  'diikuti oleh junedi, rifki + 99 rb lainnya',
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w200),
                                ),
                                const SizedBox(height: 3),
                                InkWell(
                                  child: const Text(
                                    'Lihat informasi bisnis',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  onTap: () {
                                    // add page informasi bisnis when click
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0.0,
                        side: const BorderSide(
                          color: Color.fromARGB(255, 214, 214, 214),
                        ),
                      ),
                      child: const Text(
                        'Lihat Toko',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: ListTile(
                            leading:
                                Image.asset('assets/profile.png', width: 55),
                            title: const Text('Lanjut Belanja'),
                            subtitle: const Text('FallDevAcademy.id'),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                              horizontal: 8.0,
                            ),
                          ),
                        ),
                        const Flexible(child: Icon(Icons.chevron_right))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExpandingItems extends StatefulWidget {
  const ExpandingItems({Key? key}) : super(key: key);

  @override
  _ExpandingItemsState createState() => _ExpandingItemsState();
}

class _ExpandingItemsState extends State<ExpandingItems> {
  final List<bool> _isExpanded = List.generate(1, (_) => false);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ExpansionPanelList(
          elevation: 0,
          expansionCallback: (index, isExpanded) => setState(
            () {
              _isExpanded[index] = !isExpanded;
            },
          ),
          children: [
            for (int i = 0; i < 1; i++)
              ExpansionPanel(
                body: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultricies porta rutrum. Vivamus id ultrices velit. Sed tellus lorem, egestas ac magna non, fringilla sagittis erat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce tempor mi et eleifend fermentum. Sed quis molestie nunc.",
                        style: TextStyle(
                            height: 1.5,
                            color: Color.fromARGB(255, 99, 99, 99)),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Ingin info selengkapnya?',
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 30,
                        width: Get.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Kirim Pesan kepada IJlnflhbrz',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                headerBuilder: (_, isExpanded) {
                  return const ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.only(left: 16.0, right: 0),
                    title: Text(
                      'Detail dan Pengiriman',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
                isExpanded: _isExpanded[i],
              )
          ],
        ),
      ),
    );
  }
}
