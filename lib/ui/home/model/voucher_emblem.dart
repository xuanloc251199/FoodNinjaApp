import 'package:flutter/cupertino.dart';
import 'package:flutter_food_ninja/values/colors.dart';
import 'package:flutter_food_ninja/values/images.dart';
import 'package:flutter_food_ninja/values/strings.dart';

class VoucherEmblem {
  String imgBg;
  String title;
  String activity;
  Color titleColor;
  Color activityColor;

  VoucherEmblem({
    required this.imgBg,
    required this.title,
    required this.activity,
    required this.titleColor,
    required this.activityColor,
  });
}

List<VoucherEmblem> voucherItem = <VoucherEmblem>[
  VoucherEmblem(
      imgBg: bgVoucher,
      title: TITLE_AD,
      activity: ORDER,
      titleColor: textWhiteColor,
      activityColor: mainDarkColor),
  VoucherEmblem(
    imgBg: bgVoucher2,
    title: TITLE_AD,
    activity: ORDER,
    titleColor: textDarkVioletColor,
    activityColor: textDarkVioletColor,
  ),
];
