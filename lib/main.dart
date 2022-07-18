// ignore_for_file: no_logic_in_create_state

import 'package:fallgram/pages/login.dart';
import 'package:fallgram/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: LoginPages(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => const RoutesPages(),
        ),
      ],
    );
  }
}
