import 'package:flutter/material.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppTheme> {
  const AppThemeExtension({
    this.mainContainerTheme,
  });

  final MainContainerTheme? mainContainerTheme;

  @override
  AppTheme copyWith({MainContainerTheme? mainContainerTheme}) {
    return AppTheme(
        mainContainerTheme: mainContainerTheme ?? this.mainContainerTheme);
  }

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      mainContainerTheme: mainContainerTheme,
    );
  }

  // Optional
  @override
  String toString() => 'No Instance for this yet: MYSAMPLE_THEME';
}
