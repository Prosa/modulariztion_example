import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:mysample/main.dart';
import 'package:mysample/theme/main_container_theme.dart';

class GetTheme {
  static ThemeData get theme =>
      Get.isDarkMode ? ThemeData.dark() : ThemeData.light();

  static ThemeData get lightTheme => ThemeData.light().copyWith(
        backgroundColor: Colors.grey,
        extensions: <ThemeExtension<AppTheme>>[
          //In the AppTheme extension
          //We will add anything we want to be dynamic
          //Here is a Container, but could be anything you can think.
          AppTheme(
            mainContainerTheme: MainContainerTheme(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.red,
              ),
            ),
          ),
        ],
      );

  //TODO: maybe will not implement a choice for changing the theme of the app,
  //TODO: So for now, the dark theme won't be necessary
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
