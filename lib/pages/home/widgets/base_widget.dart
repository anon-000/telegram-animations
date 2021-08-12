import 'package:flutter/material.dart';
import 'package:telegramui/pages/home/widgets/chat_tile.dart';
import 'package:telegramui/pages/home/widgets/home_drawer.dart';

///
/// Created by Auro (auro@smarttersstudio.com) on 12/08/21 at 1:07 am
///

class BaseWidget extends StatefulWidget {
  final AnimationController controller;

  const BaseWidget(this.controller);

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 8, vsync: this);
  }

  AnimationController get animController => widget.controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: HomeDrawer(
          controller: animController,
          isDarkMode: false,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff517DA2),
        elevation: 1,
        title: Text("Telegram"),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 10,
          labelStyle: TextStyle(fontSize: 12),
          isScrollable: true,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
          tabs: [
            Tab(
              child: Text("All"),
            ),
            Tab(
              child: Text("movies"),
            ),
            Tab(
              child: Text("code"),
            ),
            Tab(
              child: Text("Jobs"),
            ),
            Tab(
              child: Text("Work"),
            ),
            Tab(
              child: Text("College"),
            ),
            Tab(
              child: Text("Web series"),
            ),
            Tab(
              child: Text("All"),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        itemBuilder: (_, i) => ChatTile(),
        separatorBuilder: (_, i) => Divider(
          height: 1,
          indent: 70,
        ),
        itemCount: 20,
      ),
    );
  }
}
