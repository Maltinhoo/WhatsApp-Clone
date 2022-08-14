import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/mobile/mobile_layout.dart';
import 'package:whatsapp_clone/pages/web/web_layout.dart';
import 'package:whatsapp_clone/utils/custom_colors.dart';
import 'package:whatsapp_clone/utils/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: CustomColors.backgroundColor),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileLayout(),
        webScreenLayout: WebLayout(),
      ),
    );
  }
}
