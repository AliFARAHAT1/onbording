import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/Screens/FirstPage.dart';
import 'package:todoapp/Screens/SecondScreen.dart';
import 'package:todoapp/Screens/TabBaeScreens/AllNewsScreen.dart';
import 'package:todoapp/Screens/TabBaeScreens/TodayNewsScreen.dart';
import 'package:todoapp/Screens/TabBaeScreens/YesterdayNewsScreen.dart';

import '../controllers/BottomNavigationController.dart';
import '../controllers/CounterContreoller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  CounterController controller = Get.put(CounterController());
  BottomNavigationBarController navigationController =
      Get.put(BottomNavigationBarController());

  List<Widget> screens = [
    FirstPage(),
    SecondScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: navigationController.index.value,
            onTap: (int value) {
              navigationController.changeIndex(selectedIndex: value);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings")
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.orange,
              elevation: 0,
              onPressed: () {
                controller.increase();
              },
              child: const Icon(
                Icons.add,
                size: 33,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              backgroundColor: Colors.orange,
              elevation: 0,
              onPressed: () {
                controller.decrease();
              },
              child: const Icon(
                Icons.remove,
                size: 33,
              ),
            ),
          ],
        ),
        body: Obx((() => screens[navigationController.index.value])));
  }
}
