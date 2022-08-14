import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/models/info_model.dart';

import '../../utils/custom_colors.dart';

class ContactCard extends StatelessWidget {
  final Info info;
  final Function() onTap;
  const ContactCard({Key? key, required this.info, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              title: Text(
                info.name.toString(),
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  info.message.toString(),
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  info.profilePic.toString(),
                ),
                radius: 30,
              ),
              trailing: Text(
                info.time.toString(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
        const Divider(color: CustomColors.dividerColor, indent: 85),
      ],
    );
  }
}
