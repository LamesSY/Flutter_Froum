import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';
import 'froum_detail.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  WordPair wordPair = WordPair.random();
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: buildCard(),
    );
  }

  Widget buildCard() {
    return Card(
      color: Colors.white,
      elevation: 5.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildStackImgBack(),
          _buildText(wordPair),
        ],
      ),
    );
  }

  Widget _buildText(WordPair pair) {
    int id = random.nextInt(500) + 400;
    return Expanded(
        child: Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            pair.asPascalCase,
            style: const TextStyle(color: Colors.blue, fontSize: 20.0),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.account_circle,
                size: 50,
                color: Colors.cyan,
              ),
              Text(
                "User No.$id",
                style: TextStyle(color: Colors.cyan, fontSize: 15.0),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FroumDetail()));
                  },
                  child: Icon(
                    Icons.remove_red_eye,
                    color: Colors.cyan,
                  )),
            ],
          )
        ],
      ),
    ));
  }

  Widget _buildStackImgBack() {
    int id = random.nextInt(50);
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: <Widget>[
        Image(
          image: NetworkImage("https://picsum.photos/id/$id/400/300"),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Text(
            wordPair.asPascalCase,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        )
      ],
    );
  }
}
