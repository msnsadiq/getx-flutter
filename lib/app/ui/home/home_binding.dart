import 'package:get/get.dart';
import 'package:getx_flutter/app/ui/home/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }

}