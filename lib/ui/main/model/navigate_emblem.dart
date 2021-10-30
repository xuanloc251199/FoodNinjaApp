import 'package:flutter/cupertino.dart';
import 'package:flutter_food_ninja/values/colors.dart';
import 'package:flutter_food_ninja/values/images.dart';
import 'package:flutter_food_ninja/values/strings.dart';

class NavigateEmblem {
  String image;
  String text;
  Color color;

  NavigateEmblem({
    required this.text,
    required this.image,
    required this.color,
  });
}

List<NavigateEmblem> navigateItem = <NavigateEmblem>[
  NavigateEmblem(text: HOME, image: ic_home, color: activeColor),
  NavigateEmblem(text: USER, image: ic_user, color: activeColor),
  NavigateEmblem(text: CART, image: ic_cart, color: activeColor),
  NavigateEmblem(text: CHAT, image: ic_chat, color: activeColor),
];
