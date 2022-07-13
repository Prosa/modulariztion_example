import 'package:flutter/material.dart';
import 'package:template/template/theme_two/color.dart';
import 'package:template/template/theme_two/constant.dart';
import 'package:template/template/theme_two/text_style.dart';
import 'package:template/theme/extension/app_theme_extension.dart';
import 'package:template/theme/theme_data/main_container_theme.dart';

ThemeData templateThemeOne = ThemeData(
  //We'll use scaffolds all through the app, so the background color is the scaffoldBackgroundColor
  scaffoldBackgroundColor: backgroundColor,
  primaryColorLight: primaryColorLight,
  backgroundColor: backgroundColor,
  primaryColor: primaryColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    toolbarHeight: kDefaultToolbarHeight,
    iconTheme: IconThemeData(
      color: secondaryColor,
    ),
    centerTitle: true,
  ),
  //ElevatedButtonTheme
  //This is how primary buttons will look like;
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: primaryColor,
      onPrimary: onPrimaryColor,
      elevation: kElevation,
      shadowColor: primaryColorLight,
      onSurface: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
        vertical: kVerticalPadding,
      ),
      textStyle: subtitleNormal,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: subtitleNormal.copyWith(
        decoration: TextDecoration.underline,
      ),
      primary: primaryColor,
    ),
  ),
  extensions: <ThemeExtension<AppThemeExtension>>[
    AppThemeExtension(
      mainContainerTheme: MainContainerTheme(
        margin: const EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadiusContainer),
          border: Border.all(
            width: kBorderWidth,
            color: borderColor,
          ),
        ),
        padding: const EdgeInsets.all(kDefaultPadding),
      ),
    )
  ],
);