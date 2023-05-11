import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/app/ui/home/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: controller,
        initState: (_) {},
        builder: (_) {
          return SafeArea(
            child: Scaffold(
                backgroundColor: controller.color.value,
                body: Center(
                  child: GridView.builder(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1.4,
                      ),
                      itemCount: 3,
                      itemBuilder: (ctx, index) {
                        return TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: index == 0
                                    ? Colors.red
                                    : index == 1
                                        ? Colors.white
                                        : index == 2
                                            ? Colors.green
                                            : Colors.black),
                            onPressed: () {
                              index == 0
                                  ? controller.redColor()
                                  : index == 1
                                      ? controller.whiteColor()
                                      : index == 2
                                          ? controller.greenColor()
                                          : null;
                            },
                            child: Text(
                              index == 0
                                  ? "red"
                                  : index == 1
                                      ? "white"
                                      : index == 2
                                          ? "green"
                                          : "",
                              style: TextStyle(color: Colors.black),
                            ));
                      }),
                )),
          );
        });
  }
}
