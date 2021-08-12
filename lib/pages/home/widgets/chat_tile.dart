import 'package:flutter/material.dart';
import 'package:telegramui/widgets/user_avatar.dart';

///
/// Created by Auro (auro@smarttersstudio.com) on 11/08/21 at 10:45 pm
///

class ChatTile extends StatelessWidget {
  final bool isDarkMode;

  const ChatTile({this.isDarkMode = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: UserCircleAvatar(
          'https://pfpmaker.com/_nuxt/img/profile-3-1.3e702c5.png',
          radius: 36,
        ),
      ),
      title: Text(
        "John Doe",
        style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
      ),
      subtitle: Text(
        "Hey there",
        style: TextStyle(
            fontSize: 12, color: isDarkMode ? Colors.white : Colors.black),
      ),
      trailing: Container(
        padding: const EdgeInsets.all(5),
        child: Text(
          "12",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: isDarkMode ? Color(0xff405066) : Color(0xffC1C1C1),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
