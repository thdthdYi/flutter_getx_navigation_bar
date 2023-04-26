import 'package:get/get.dart';

import 'package:flutter/material.dart';

import '../controller/btcontroller.dart';

class NaviView extends GetView<BottomTabsController> {
  const NaviView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(

            //현재 페이지 인덱스 selectedIndex에 저장
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 0
                    ? const Icon(Icons.circle_outlined, color: Colors.blue)
                    : const Icon(Icons.circle_outlined, color: Colors.grey),
                label: '1',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 1
                    ? const Icon(Icons.vertical_shades_closed,
                        color: Colors.blue)
                    : const Icon(Icons.vertical_shades_closed,
                        color: Colors.grey),
                label: '2',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 2
                    ? const Icon(Icons.layers, color: Colors.blue)
                    : const Icon(Icons.layers, color: Colors.grey),
                label: '3',
              ),
              BottomNavigationBarItem(
                icon: controller.selectedIndex.value == 3
                    ? const Icon(Icons.videocam, color: Colors.blue)
                    : const Icon(Icons.videocam, color: Colors.grey),
                label: '4',
              ),
            ]));
  }
}
