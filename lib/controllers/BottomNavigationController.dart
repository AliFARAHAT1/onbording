import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarController {
  RxInt index = 1.obs;
  void changeIndex({required int selectedIndex}) {
    index.value = selectedIndex;
    print(selectedIndex);
  }
}
