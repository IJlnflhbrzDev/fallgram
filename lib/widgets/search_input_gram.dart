import 'package:flutter/material.dart';

class SearchInputGram extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final double heightInput;
  const SearchInputGram({
    Key? key,
    required this.heightInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightInput,
      padding: const EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          filled: true,
          fillColor: const Color.fromARGB(255, 230, 229, 229),
          label: const Text('Search'),
          prefixIcon: const Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xff999999)),
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
    );
  }
}
