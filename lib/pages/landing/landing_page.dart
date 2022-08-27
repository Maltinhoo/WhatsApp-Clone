import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/login/login_page.dart';
import 'package:whatsapp_clone/shared/widgets/custom_button.dart';
import 'package:whatsapp_clone/shared/widgets/custom_text.dart';
import 'package:whatsapp_clone/utils/custom_colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const MyText(
              'Bem vindo ao WhatsApp',
              size: 33,
              fontWeight: FontWeight.w600,
              maxLines: 1,
            ),
            SizedBox(height: constraints.maxHeight / 9),
            Expanded(
              child: Image.asset(
                'assets/whatsapp_bg.png',
                height: 340,
                width: 340,
                color: CustomColors.tabColor,
              ),
            ),
            SizedBox(height: constraints.maxHeight / 9),
            const Padding(
              padding: EdgeInsets.all(15),
              child: MyText(
                'Leia nossa Política de Privacidade. Toque em "concordar e continuar" para aceitar os Termos de Serviço.',
                color: CustomColors.greyColor,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            MainButton(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              text: 'Aceitar e continuar'.toUpperCase(),
              onPressed: () =>
                  Navigator.pushNamed(context, LoginPage.routeName),
            ),
            SizedBox(height: constraints.maxHeight / 20),
          ],
        )),
      );
    });
  }
}
