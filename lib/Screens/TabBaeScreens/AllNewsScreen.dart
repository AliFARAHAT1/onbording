import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:todoapp/controllers/CounterContreoller.dart';

import '../../controllers/BottomNavigationController.dart';

class AllNewsScreen extends StatelessWidget {
  CounterController controller = Get.put(CounterController());
  BottomNavigationBarController navigationController =
      Get.put(BottomNavigationBarController());

  AllNewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                controller.counter.toString(),
                style: TextStyle(fontSize: 55),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.cyan,
              )
            ],
          ),
        ),
      ),
    );
  }
}
