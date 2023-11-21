import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/Screens/mobile_chat_screen.dart';
import 'package:whatsapp_clone_ui/colors.dart';
import 'package:whatsapp_clone_ui/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(bottom: 10),
      itemCount: info.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MobileChatScreen(),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  info[index]["name"].toString(),
                  style: const TextStyle(fontSize: 18),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    info[index]["message"].toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    info[index]["profilePic"].toString(),
                  ),
                ),
                trailing: Text(
                  info[index]["time"].toString(),
                  style: const TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ),
            ),
            const Divider(
              color: dividerColor,
              indent: 85,
            )
          ],
        );
      },
    );
  }
}
