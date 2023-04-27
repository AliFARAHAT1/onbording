import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
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
      length: tabs.length,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Color.fromRGBO(244, 67, 54, 1),
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
              Center(
                child: Text(
                  "All News",
                  style: TextStyle(fontSize: 55),
                ),
              ),
              Center(
                child: Text(
                  "Today News",
                  style: TextStyle(fontSize: 55),
                ),
              ),
              Center(
                child: Text(
                  "Yesterday News",
                  style: TextStyle(fontSize: 55),
                ),
              )
            ],
          )),
    );
  }
}
