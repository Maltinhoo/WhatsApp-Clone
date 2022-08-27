import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/landing/landing_page.dart';
import 'package:whatsapp_clone/shared/widgets/error.dart';

import 'pages/login/login_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => const LandingPage());
    case '/login':
      return MaterialPageRoute(builder: (context) => const LoginPage());

    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: ErrorPage(
                  error: 'Essa página não existe ${settings.name}',
                ),
              ));
  }
}
