import 'package:flutter/material.dart';

class TabGram extends StatelessWidget {
  final IconData? icon;
  final bool isActive;
  const TabGram({
    Key? key,
    this.icon,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 0),
        width: MediaQuery.of(context).size.width / 2,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 2,
                    color: isActive == true ? Colors.black : Colors.white))),
        child: IconButton(onPressed: () {}, icon: Icon(icon)));
  }
}
