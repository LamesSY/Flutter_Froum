import 'package:flutter/material.dart';
import 'package:zhbit_guide/derive/user_follow.dart';
import 'package:zhbit_guide/derive/user_borwse.dart';
import 'package:zhbit_guide/derive/user_notice.dart';

class UserInfPage extends StatefulWidget {
  @override
  _UserInfPageState createState() => _UserInfPageState();
}

class _UserInfPageState extends State<UserInfPage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  Widget build(BuildContext context) {
    var card = new SizedBox(
      height: 120.0,
      child: Card(
        color: Colors.white,
        elevation: 12.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(14.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                "images/cat.jpg",
                height: 70.0,
                width: 70.0,
              ),
            ),
            VerticalDivider(),
            Text(
              "Lisiyang",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23.0,
                  decorationStyle: TextDecorationStyle.dashed),
            )
          ],
        ),
      ),
    );
    var inf = new SizedBox(
      height: 70.0,
      child: Card(
        color: Colors.white,
        elevation: 12.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserBrowse()));
              },
              child: Text(
                "浏览记录",
                style: TextStyle(color: Colors.blue),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            VerticalDivider(),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserFollow()));
              },
              child: Text(
                "关注/粉丝",
                style: TextStyle(color: Colors.blue),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            VerticalDivider(),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserBrowse()));
              },
              child: Text(
                "发布记录",
                style: TextStyle(color: Colors.blue),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
          ],
        ),
      ),
    );
    var notice = new SizedBox(
      height: 70.0,
      child: Card(
        color: Colors.white,
        elevation: 12.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        child: Row(
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserNotice()));
                },
                child: Text(
                  "消息通知",
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
      ),
    );
    var favoirte = new SizedBox(
      height: 70.0,
      child: Card(
        color: Colors.white,
        elevation: 12.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        child: Row(
          children: <Widget>[
            FlatButton(
                onPressed: null,
                child: Text(
                  "收藏",
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
      ),
    );
    var footprints = new SizedBox(
      height: 70.0,
      child: Card(
        color: Colors.white,
        elevation: 12.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "------------黎斯洋的Flutter软件------------",
              style: TextStyle(color: Colors.blue, fontSize: 18.0),
            )
          ],
        ),
      ),
    );
    var backpic = new SizedBox(
      height: 280.0,
      child: Card(
        color: Colors.white,
        elevation: 12.0,
//        shape: const RoundedRectangleBorder(
//          borderRadius: BorderRadius.all(Radius.circular(14.0)),
//        ),
        child: Card(
          child: Material(
              child: Image.asset(
            "images/grape.jpg",
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
    return MaterialApp(
      title: "USER",
      theme: new ThemeData(backgroundColor: Colors.pink[200]),
      home: Scaffold(
        appBar: AppBar(title: Text("USER")),
        body: Column(
          children: <Widget>[card, inf, notice, favoirte, footprints, backpic],
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
