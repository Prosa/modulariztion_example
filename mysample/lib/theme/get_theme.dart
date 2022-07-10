
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:mysample/main.dart';
import 'package:mysample/theme/main_container_theme.dart';

class GetTheme{
  static ThemeData get theme => Get.isDarkMode ? ThemeData.dark() : ThemeData.light();

  static ThemeData get lightTheme => ThemeData.light().copyWith(
    backgroundColor: Colors.grey,
    extensions: <ThemeExtension<AppTheme>>[
      AppTheme(
          mainContainerTheme: MainContainerTheme(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.red,
            ),
          )),
    ],
  );

  static ThemeData get darkTheme => ThemeData.dark().copyWith(
    backgroundColor: Colors.grey,
    extensions: <ThemeExtension<AppTheme>>[
      AppTheme(
          mainContainerTheme: MainContainerTheme(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.blue,
            ),
          )),
    ],
  );
}