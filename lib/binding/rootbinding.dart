import 'package:get/get.dart';
import 'package:yamanportfolio/controller/maincontroller.dart';

class rootbinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Home());
  }
}
