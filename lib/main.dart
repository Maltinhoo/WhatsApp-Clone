import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/pages/landing/landing_page.dart';
import 'package:whatsapp_clone/router.dart';
import 'package:whatsapp_clone/utils/custom_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: CustomColors.backgroundColor,
          appBarTheme: const AppBarTheme(color: CustomColors.appBarColor)),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LandingPage(),
    );
  }
}
