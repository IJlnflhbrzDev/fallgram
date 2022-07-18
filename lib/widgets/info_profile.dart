import 'package:fallgram/theme.dart';
import 'package:flutter/material.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Fallgram',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt  ',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 4),
          // seperti href/anchor
          GestureDetector(
            child: const Text(
              'fallgram.com',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  decoration: TextDecoration.underline),
            ),
            onTap: () {},
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black,
                  primary: Colors.transparent,
                  elevation: 0,
                  side: BorderSide(color: cGrey)),
              onPressed: () {},
              child: const Text('Edit Profile'),
            ),
          )
        ],
      ),
    );
  }
}
