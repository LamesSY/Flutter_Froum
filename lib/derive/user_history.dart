import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:zhbit_guide/derive/froum_card.dart';



class UserHistory extends StatefulWidget {
  @override
  _UserHistoryState createState() => _UserHistoryState();
}

class _UserHistoryState extends State<UserHistory> {
  final wordPair = new WordPair.random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
          title: Text("我的收藏"),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
                MyCard(),
              ],
            )
          ],
          physics: const AlwaysScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
