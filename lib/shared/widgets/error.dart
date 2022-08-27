import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/widgets/custom_text.dart';

class ErrorPage extends StatelessWidget {
  final String error;
  const ErrorPage({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyText(error),
    );
  }
}
