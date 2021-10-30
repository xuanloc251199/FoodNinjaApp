import 'package:flutter_food_ninja/ui/onboard/view/onboard_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void onInit() {
    super.onInit();
    splashAction();
  }

  void splashAction() async {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Get.offAll(OnBoardPage());
      },
    );
  }
}
