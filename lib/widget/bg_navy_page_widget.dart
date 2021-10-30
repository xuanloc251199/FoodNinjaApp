import 'package:flutter/material.dart';
import 'package:flutter_food_ninja/values/images.dart';
import 'package:get/get.dart';

class BgNavyPageWidget extends StatelessWidget {
  final Widget? child;

  const BgNavyPageWidget({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              bgHomePage,
              width: Get.width,
            ),
          ),
        ],
      ),
    );
  }
}
