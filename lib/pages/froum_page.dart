import 'package:flutter/material.dart';
import 'package:zhbit_guide/derive/froum_release.dart';
import 'package:english_words/english_words.dart';
import 'package:zhbit_guide/derive/froum_card.dart';
import 'package:zhbit_guide/derive/froum_drawer.dart';

class FroumPage extends StatefulWidget {
  @override
  _FroumPageState createState() => _FroumPageState();
}

class _FroumPageState extends State<FroumPage>
    with AutomaticKeepAliveClientMixin {
  final wordPair = new WordPair.random();

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("FROUM"),
        ),
        drawer: MyDrawer(),
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


        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> FroumRelease()));
          },
          tooltip: 'relase',
          child: Icon(Icons.add),
        ),
      ),
    );
  }










}








