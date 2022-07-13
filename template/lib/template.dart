
import 'package:flutter/material.dart';
import 'package:template/template/theme_one/template_theme_one.dart';
import 'package:template/template/theme_two/templete_theme_two.dart';

enum Template{
  templateTestOne,
  templateTestTwo,
  templateTestThree,
  templateDefault,
}

extension TemplateExt on Template{
  ThemeData get theme {
    switch (this) {
      case Template.templateTestOne:
        return templateThemeOne;
      case Template.templateTestTwo:
        return templateThemeTwo;
      case Template.templateTestThree:
        return ThemeData(

        );
      default:
        return ThemeData(

        );
    }
  }
}