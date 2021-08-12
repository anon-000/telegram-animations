import 'package:flutter/material.dart';
import 'package:telegramui/pages/home/widgets/base_widget.dart';
import 'package:telegramui/pages/home/widgets/overlay_widget.dart';
import 'package:telegramui/widgets/circular_reveal_animation/circular_reveal_animation.dart';

///
/// Created by Auro (auro@smarttersstudio.com) on 11/08/21 at 10:44 pm
///

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BaseWidget(animationController),
          CircularRevealAnimation(
            child: OverlayWidget(animationController),
            animation: animation,
            centerOffset: Offset(275, 65),
          ),
        ],
      ),
    );
  }
}
