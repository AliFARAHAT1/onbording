import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../controllers/CounterContreoller.dart';

class TodayNewsScreen extends StatelessWidget {
  TodayNewsScreen({super.key});
  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Obx(
        (() => Text(
              controller.counter.toString(),
              style: TextStyle(fontSize: 55, color: Colors.white),
            )),
      )),
    );
  }
}
