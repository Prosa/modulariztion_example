import 'package:flutter/material.dart';
import 'package:mysample/main.dart';

class MainContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;

  const MainContainer({Key? key, this.width, this.height, this.padding, this.margin, this.decoration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: Theme.of(context).extension<AppTheme>()?.mainContainerTheme?.decoration,
      alignment: Theme.of(context).extension<AppTheme>()?.mainContainerTheme?.alignment,
      padding: padding ?? Theme.of(context).extension<AppTheme>()?.mainContainerTheme?.padding,
    );
  }
}
