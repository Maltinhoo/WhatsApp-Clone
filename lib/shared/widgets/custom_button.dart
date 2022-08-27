import 'package:flutter/material.dart';

import '../../utils/custom_colors.dart';
import 'custom_text.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final EdgeInsets? margin;
  final double? height;
  final double? width;

  const MainButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.margin,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: CustomColors.tabColor,
            minimumSize: Size(width ?? double.infinity, height ?? 50)),
        child: MyText(
          text,
          color: CustomColors.blackColor,
        ),
      ),
    );
  }
}
