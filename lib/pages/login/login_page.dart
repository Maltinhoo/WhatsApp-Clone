import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/widgets/custom_button.dart';
import 'package:whatsapp_clone/shared/widgets/custom_text.dart';
import 'package:whatsapp_clone/utils/custom_colors.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();
  Country? selectedCountry;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country country) {
          setState(() {
            selectedCountry = country;
            print(selectedCountry!.phoneCode);
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const MyText(
              'Entre com seu numero de telefone',
              size: 20,
            ),
            backgroundColor: CustomColors.backgroundColor,
          ),
          body: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Column(
                  children: [
                    const MyText(
                      'O WhatsApp precisará verificar seu número de telefone.',
                      size: 15,
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: pickCountry,
                      child: const MyText('Escolha o país'),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        if (selectedCountry != null)
                          MyText('+${selectedCountry!.phoneCode}', size: 15),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: constraints.maxWidth * .7,
                          child: TextField(
                            controller: phoneController,
                            decoration: const InputDecoration(
                                hintText: 'número de telefone'),
                          ),
                        )
                      ],
                    )
                  ],
                )),
                MainButton(
                  width: 90,
                  text: 'Próximo',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
