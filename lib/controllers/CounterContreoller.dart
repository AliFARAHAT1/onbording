import 'package:get/get.dart';

class CounterController {
  RxInt counter = 90.obs;

  increase() {
    print("Hello World");
    counter.value++;
  }

  decrease() {
    counter.value--;
  }
}
