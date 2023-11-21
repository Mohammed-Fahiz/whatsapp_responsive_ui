import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/Widgets/my_message_card.dart';
import 'package:whatsapp_clone_ui/Widgets/sender_message_card.dart';
import 'package:whatsapp_clone_ui/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          return MyMessageCard(
            message: messages[index]["text"].toString(),
            time: messages[index]["time"].toString(),
          );
        } else {
          return SenderMessageCard(
            message: messages[index]["text"].toString(),
            time: messages[index]["time"].toString(),
          );
        }
      },
    );
  }
}
