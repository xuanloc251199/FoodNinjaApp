import 'package:flutter/material.dart';
import 'package:flutter_food_ninja/ui/chat/controller/chat_controller.dart';
import 'package:flutter_food_ninja/ui/chat/controller/chat_detail_controller.dart';
import 'package:flutter_food_ninja/ui/home/controller/home_controller.dart';
import 'package:flutter_food_ninja/ui/home/controller/notification_controller.dart';
import 'package:flutter_food_ninja/ui/home/controller/rating_controller.dart';
import 'package:flutter_food_ninja/ui/home/controller/search_controller.dart';
import 'package:flutter_food_ninja/ui/home/controller/view_more_controller.dart';
import 'package:flutter_food_ninja/ui/home/controller/voucher_controller.dart';
import 'package:flutter_food_ninja/ui/home/view/view_more_page.dart';
import 'package:flutter_food_ninja/ui/main/controller/main_controller.dart';
import 'package:flutter_food_ninja/ui/main/view/main_page.dart';
import 'package:flutter_food_ninja/ui/splash/controller/splash_controller.dart';
import 'package:flutter_food_ninja/ui/splash/view/splash_page.dart';
import 'package:flutter_food_ninja/values/colors.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'ui/call/controller/call_controller.dart';
import 'ui/home/controller/menu_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(_buildApp());
}

Widget _buildApp() => LayoutBuilder(builder: (context, constraints) {
      return Sizer(builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: bgWhiteColor,
            primaryColor: mainDarkColor,
          ),
          home: MainPage(),
          initialBinding: _Binding(),
        );
      });
    });

class _Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
    Get.lazyPut<MainController>(() => MainController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<SearchController>(() => SearchController(), fenix: true);
    Get.lazyPut<ViewMoreController>(() => ViewMoreController(), fenix: true);
    Get.lazyPut<MenuController>(() => MenuController(), fenix: true);
    Get.lazyPut<ChatController>(() => ChatController(), fenix: true);
    Get.lazyPut<ChatDetailController>(() => ChatDetailController(),
        fenix: true);
    Get.lazyPut<NotificationController>(() => NotificationController(),
        fenix: true);
    Get.lazyPut<VoucherController>(() => VoucherController(), fenix: true);
    Get.lazyPut<CallController>(() => CallController(), fenix: true);
    Get.lazyPut<RatingController>(() => RatingController(), fenix: true);
  }
}
