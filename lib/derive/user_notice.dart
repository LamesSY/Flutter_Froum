import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class UserNotice extends StatefulWidget {
  @override
  _UserNoticeState createState() => _UserNoticeState();
}

class _UserNoticeState extends State<UserNotice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("通知"),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
        ),
        body: Column(
          children: <Widget>[
            notice(),
            notice(),
            notice(),
            notice(),
            notice(),
            notice(),
          ],
        ),
      ),
    );
  }
}

Widget notice() {
  WordPair pair = WordPair.random();
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person),
          title: Text(pair.asPascalCase),
          subtitle: Text("2019-05-01"),
        ),
        Text("it is a "+pair.asPascalCase+" and from "+pair.asPascalCase,style: TextStyle(fontSize: 16.0,color: Colors.blue),)
      ],
    ),
  );
}
