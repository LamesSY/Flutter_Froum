import 'package:flutter/material.dart';
import 'user_follow.dart';



class UserFllowFans extends StatefulWidget {
  @override
  _UserFllowFansState createState() => _UserFllowFansState();
}

class _UserFllowFansState extends State<UserFllowFans> with SingleTickerProviderStateMixin{
  TabController _tabController;
  List tabs = ["关注","粉丝"];


  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("关注/粉丝"),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
          bottom: TabBar(
              isScrollable: true,
              controller: _tabController,
              tabs: tabs.map((e) =>  Tab(text: e,)).toList()
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            UserFollow(),
            UserFollow()
          ]
        ),
      ),
    );
  }
  







}
