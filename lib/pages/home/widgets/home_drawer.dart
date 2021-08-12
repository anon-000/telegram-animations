import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegramui/widgets/user_avatar.dart';

///
/// Created by Auro (auro@smarttersstudio.com) on 12/08/21 at 1:08 am
///

class HomeDrawer extends StatelessWidget {
  final AnimationController? controller;
  final bool isDarkMode;

  const HomeDrawer({this.controller, this.isDarkMode = false});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: isDarkMode ? Color(0xff1C242F) : Get.theme.scaffoldBackgroundColor,
      child: ListView(
        children: [
          Container(
            color: isDarkMode ? Color(0xff233040) : Color(0xff5A8FBB),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 6, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UserCircleAvatar(
                          'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg'),
                      IconButton(
                        onPressed: () {
                          if (controller!.status == AnimationStatus.forward ||
                              controller!.status == AnimationStatus.completed) {
                            controller!.reverse();
                          } else {
                            controller!.forward();
                          }
                        },
                        icon: Icon(
                          isDarkMode ? Icons.light_mode : Icons.dark_mode,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    "Aurosmruti",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "+91 6371824546",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.people_alt_outlined, color: Colors.grey),
            title: Text(
              "New Group",
              style: TextStyle(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.8)
                      : Colors.black.withOpacity(0.9)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_outline_outlined, color: Colors.grey),
            title: Text(
              "Contacts",
              style: TextStyle(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.8)
                      : Colors.black.withOpacity(0.9)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.call, color: Colors.grey),
            title: Text(
              "Calls",
              style: TextStyle(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.8)
                      : Colors.black.withOpacity(0.9)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_history_outlined, color: Colors.grey),
            title: Text(
              "People Nearby",
              style: TextStyle(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.8)
                      : Colors.black.withOpacity(0.9)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.bookmark_border_sharp, color: Colors.grey),
            title: Text(
              "Saved Messages",
              style: TextStyle(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.8)
                      : Colors.black.withOpacity(0.9)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.grey),
            title: Text(
              "Settings",
              style: TextStyle(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.8)
                      : Colors.black.withOpacity(0.9)),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person_add_alt, color: Colors.grey),
            title: Text(
              "Invite Friends",
              style: TextStyle(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.8)
                      : Colors.black.withOpacity(0.9)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.more_time, color: Colors.grey),
            title: Text(
              "Telegram Features",
              style: TextStyle(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.8)
                      : Colors.black.withOpacity(0.9)),
            ),
          ),
        ],
      ),
    );
  }
}
