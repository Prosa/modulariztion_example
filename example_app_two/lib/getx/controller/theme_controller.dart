

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';


class ThemeController extends GetxController {
  static ThemeController get find => _findOrInitialize;

  static ThemeController get _findOrInitialize{
    try{
      return Get.find();
    }catch(_){
      Get.put(ThemeController());
    }

    return Get.find();
  }

  //We can use MediaQuery.fromWindow(WidgetsBinding.instance.windows).devicePixelRatio
  //To get the sizes of the screen
  //To make our sizes dynamic
  TextStyle get textStyleWidgetTitle => TextStyle(
    fontSize: MediaQueryData.fromWindow(WidgetsBinding.instance.window).devicePixelRatio * 7,
    fontWeight: FontWeight.bold,
  );

  double get defaultMargin => MediaQueryData.fromWindow(WidgetsBinding.instance.window).devicePixelRatio * 4;

}