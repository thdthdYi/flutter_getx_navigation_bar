import 'package:flutter/material.dart';
import 'package:flutter_getx_btnavi/screen/homescreen.dart';

import 'package:get/get.dart';

import 'controller/btcontroller.dart';

void main() {
  Get.put(BottomTabsController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
