import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../controllers/CounterContreoller.dart';

class YesterdayNewsScreen extends StatelessWidget {
  CounterController controller = Get.put(CounterController());

  YesterdayNewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Center(
          child: Obx(
        () => Text(
          controller.counter.toString(),
          style: TextStyle(fontSize: 55),
        ),
      )),
    );
  }
}
