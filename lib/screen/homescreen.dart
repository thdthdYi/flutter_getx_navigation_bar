import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bottomnavi.dart';
import '../controller/btcontroller.dart';

class Homescreen extends GetView<BottomTabsController> {
  const Homescreen({super.key});

  static List<Widget> tabPages = [
    //navi page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
            child: tabPages[BottomTabsController.to.selectedIndex.value]),
      ),
      bottomNavigationBar: const NaviView(),
    );
  }
}
