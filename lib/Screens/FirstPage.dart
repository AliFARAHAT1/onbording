import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'TabBaeScreens/AllNewsScreen.dart';
import 'TabBaeScreens/TodayNewsScreen.dart';
import 'TabBaeScreens/YesterdayNewsScreen.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  List<Widget> tabs = [
    Tab(
      text: "All",
      icon: Icon(Icons.all_inbox),
    ),
    Tab(
      text: "Today",
      icon: Icon(Icons.today),
    ),
    Tab(
      text: "Yesterday",
      icon: Icon(Icons.youtube_searched_for),
      iconMargin: EdgeInsets.only(bottom: 10),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: tabs.length,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Colors.grey.shade400,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 19),
              indicatorColor: Colors.black,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2, color: Colors.white),
              ),
              indicatorSize: TabBarIndicatorSize.label,
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: [
              AllNewsScreen(),
              TodayNewsScreen(),
              YesterdayNewsScreen()
            ],
          )),
    );
  }
}
