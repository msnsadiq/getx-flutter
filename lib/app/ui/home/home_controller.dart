import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<Color> color = Colors.red.obs;

  redColor() {
    color = Colors.red.obs;
    update();
  }

  whiteColor() {
    color = Colors.white.obs;
    update();
  }

  greenColor() {
    color = Colors.green.obs;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
