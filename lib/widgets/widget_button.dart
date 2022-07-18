import 'package:flutter/material.dart';

class WidgetButonn extends StatefulWidget {
  final String? textButton;
  const WidgetButonn({Key? key, required this.textButton}) : super(key: key);

  @override
  State<WidgetButonn> createState() => _WigetButonnState();
}

class _WigetButonnState extends State<WidgetButonn> {
  String? textButton;
  @override
  void initState() {
    super.initState();
    textButton = widget.textButton;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, left: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 0.0,
          side: const BorderSide(
            color: Color.fromARGB(255, 228, 228, 228),
            width: 1,
          ),
        ),
        child: Text(
          '$textButton',
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        onPressed: () {},
      ),
    );
  }
}
