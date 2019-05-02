import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:zhbit_guide/derive/froum_card.dart';



class UserBrowse extends StatefulWidget {
  @override
  _UserBrowseState createState() => _UserBrowseState();
}

class _UserBrowseState extends State<UserBrowse> {
  final wordPair = new WordPair.random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
          title: Text("浏览记录"),
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
