import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/widgets/contact_card.dart';

import '../../pages/mobile/mobile_chat.dart';
import '../data/data.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Data.infos.length,
        itemBuilder: (context, index) {
          return ContactCard(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MobileChat(
                    info: Data.infos[index],
                  ),
                ),
              );
            },
            info: Data.infos[index],
          );
        },
      ),
    );
  }
}
