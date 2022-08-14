import 'package:flutter/material.dart';
import 'package:whatsapp_clone/shared/widgets/sender_message_card.dart';

import '../data/data.dart';
import 'my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Data.messages.length,
      itemBuilder: (context, index) {
        if (Data.messages[index].isMe == true) {
          return MyMessageCard(
            message: Data.messages[index].text.toString(),
            date: Data.messages[index].time.toString(),
          );
        }
        return SenderMessageCard(
          message: Data.messages[index].text.toString(),
          date: Data.messages[index].time.toString(),
        );
      },
    );
  }
}
