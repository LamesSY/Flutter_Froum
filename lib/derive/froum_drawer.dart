import 'package:flutter/material.dart';
import 'froum_fav.dart';
import 'package:zhbit_guide/derive/user_follow.dart';


class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "images/cat.jpg",
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ),
                  Text(
                    "Lisiyang",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(color: Colors.blue,),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.favorite),
                    title: const Text('我的收藏'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserFav()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.repeat),
                    title: const Text('关注/粉丝'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserFollow()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}