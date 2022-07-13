import 'package:flutter/material.dart';
import 'package:template/theme/theme_data/main_container_theme.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({
    this.mainContainerTheme,
  });

  final MainContainerTheme? mainContainerTheme;

  @override
  AppThemeExtension copyWith({MainContainerTheme? mainContainerTheme}) {
    return AppThemeExtension(
        mainContainerTheme: mainContainerTheme ?? this.mainContainerTheme);
  }

  @override
  AppThemeExtension lerp(ThemeExtension<AppThemeExtension>? other, double t) {
    if (other is! AppThemeExtension) {
      return this;
    }
    return AppThemeExtension(
      mainContainerTheme: mainContainerTheme,
    );
  }

  // Optional
  @override
  String toString() => 'No Instance for this yet';
}
