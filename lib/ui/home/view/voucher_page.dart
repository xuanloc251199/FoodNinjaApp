import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_food_ninja/ui/home/controller/home_controller.dart';
import 'package:flutter_food_ninja/ui/home/controller/voucher_controller.dart';
import 'package:flutter_food_ninja/ui/home/model/notification_emblem.dart';
import 'package:flutter_food_ninja/ui/home/model/voucher_emblem.dart';
import 'package:flutter_food_ninja/values/colors.dart';
import 'package:flutter_food_ninja/values/dimen.dart';
import 'package:flutter_food_ninja/values/fonts.dart';
import 'package:flutter_food_ninja/values/images.dart';
import 'package:flutter_food_ninja/values/strings.dart';
import 'package:flutter_food_ninja/widget/neu_button_widget.dart';
import 'package:flutter_food_ninja/widget/special_button_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class VoucherPage extends GetView<VoucherController> {
  const VoucherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<HomeController>(
        builder: (value) => AnnotatedRegion(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: _buildBody(),
            ),
            value: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
            )),
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset(
            bgHomePage,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 8.0.w,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 8.0.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      NeuButtonWidget(
                        width: 50,
                        height: 50,
                        bgButton: orangeLightColor,
                        child: Center(
                          child: Container(
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              ic_back,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.0.h,
                  ),
                  Container(
                    width: Get.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              VOUCHER_TITLE,
                              style: TextStyle(
                                color: textBlackColor,
                                fontFamily: robotoRegular,
                                fontSize: largeXLSize,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.0.w,
                        ),
                        Container(
                          width: Get.width,
                          height: Get.height,
                          child: ListView.builder(
                            itemCount: voucherItem.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, i) => Container(
                              child: SpecialButtonWidget(
                                width: Get.width,
                                height: 122,
                                bgImage: voucherItem[i].imgBg,
                                title: voucherItem[i].title,
                                activity: voucherItem[i].activity,
                                textTitleColor: voucherItem[i].titleColor,
                                textActivityColor: voucherItem[i].activityColor,
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
