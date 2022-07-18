import 'package:fallgram/theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StoryHighlight extends StatelessWidget {
  final String? highlightImage;
  final String? highlightTitle;
  StoryHighlight(
      {Key? key,
      this.highlightImage,
      this.highlightTitle,
      this.isActiveChangeBorderColor})
      : super(key: key);
  Color highlightBorderRed = Colors.red;
  Color highlightBorderOrange = Colors.orange;
  final bool? isActiveChangeBorderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: isActiveChangeBorderColor == true
                        ? LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              highlightBorderOrange,
                              highlightBorderRed,
                            ],
                          )
                        : LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              cGrey,
                              cGrey,
                            ],
                          )),
              ),
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('$highlightImage'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 3, color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(height: 4),
          Text('$highlightTitle', style: const TextStyle(fontSize: 14))
        ],
      ),
    );
  }
}
