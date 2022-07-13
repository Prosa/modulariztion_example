import 'package:flutter/material.dart';
import 'package:template/theme/extension/app_theme_extension.dart';

class MainContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;
  final Widget? child;

  const MainContainer({Key? key, this.width, this.height, this.padding, this.margin, this.decoration, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin ?? Theme.of(context).extension<AppThemeExtension>()?.mainContainerTheme?.margin,
      decoration: decoration ?? Theme.of(context).extension<AppThemeExtension>()?.mainContainerTheme?.decoration,
      alignment: Theme.of(context).extension<AppThemeExtension>()?.mainContainerTheme?.alignment,
      padding: padding ?? padding ?? Theme.of(context).extension<AppThemeExtension>()?.mainContainerTheme?.padding,
      child: Align(
        alignment: Alignment.center,
        child: child ?? const SizedBox(),
      ),
    );
  }
}
