import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
      child: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                controller.counter.toString(),
                style: TextStyle(fontSize: 55, color: Colors.white),
              ),
              TextButton(
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (_) => CupertinoDialogAction(
                        child: Container(
                          height: 100,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Text('Are you sure?'),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {}, child: Text('YES')),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('NO')),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Sign Out',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
