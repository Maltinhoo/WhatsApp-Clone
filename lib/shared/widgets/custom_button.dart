import 'package:flutter/material.dart';

import '../../utils/custom_colors.dart';
import 'custom_text.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final EdgeInsets margin;

  const MainButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: CustomColors.tabColor,
            minimumSize: const Size(double.infinity, 50)),
        child: MyText(
          text,
          color: CustomColors.blackColor,
        ),
      ),
    );
  }
}
