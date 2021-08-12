import 'package:flutter/material.dart';
import 'package:telegramui/pages/home/widgets/chat_tile.dart';
import 'package:telegramui/pages/home/widgets/home_drawer.dart';

///
/// Created by Auro (auro@smarttersstudio.com) on 12/08/21 at 1:07 am
///

class OverlayWidget extends StatefulWidget {
  final AnimationController controller;

  const OverlayWidget(this.controller);

  @override
  _OverlayWidgetState createState() => _OverlayWidgetState();
}

class _OverlayWidgetState extends State<OverlayWidget>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 8, vsync: this);
  }

  AnimationController get _animController => widget.controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: HomeDrawer(
          isDarkMode: true,
          controller: _animController,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff212D3B),
        elevation: 1,
        title: Text("Telegram"),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
            Scaffold.of(context).openDrawer();
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
      backgroundColor: Color(0xff1D2733),
      body: ListView.separated(
        itemBuilder: (_, i) => ChatTile(isDarkMode: true),
        separatorBuilder: (_, i) => Divider(
          height: 1,
          indent: 70,
        ),
        itemCount: 20,
      ),
    );
  }
}
