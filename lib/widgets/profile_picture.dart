import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 88,
          height: 88,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.orange]),
              borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          width: 82,
          height: 82,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/profileMe.png'))),
        ),
      ],
    );
  }
}
