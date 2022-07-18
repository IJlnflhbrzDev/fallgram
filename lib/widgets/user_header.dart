import 'package:flutter/material.dart';

class UserHeader extends StatelessWidget {
  final bool isSponsore;
  final String? name;
  final String? imgUrl;
  const UserHeader({Key? key, required this.isSponsore, this.name, this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8, right: 8),
          margin: const EdgeInsets.only(bottom: 9),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 9),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          image: DecorationImage(
                              image: AssetImage(
                            '$imgUrl',
                          ))),
                    ),
                    isSponsore == true
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text(
                                  '$name',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Sponsored',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ])
                        : Text(
                            '$name',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                  ],
                ),
              ),
              const Icon(Icons.more_horiz)
            ],
          ),
        )
      ],
    );
  }
}
