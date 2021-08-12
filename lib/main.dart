import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telegramui/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AusiCare Doctor',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: HomePage(),
    );
  }
}
