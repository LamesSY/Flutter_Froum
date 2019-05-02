import 'package:flutter/material.dart';
import 'pages/froum_page.dart';
import 'pages/user_inf_page.dart';
import 'pages/map_page.dart';

class NavigationKeepAlive extends StatefulWidget{
  @override
  _NavigationKeepAliveState createState() => _NavigationKeepAliveState();

}

class _NavigationKeepAliveState extends State<NavigationKeepAlive> with SingleTickerProviderStateMixin{
  //final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  var _controller = PageController(
    initialPage: 0,
  );


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          MapPage(),
          FroumPage(),
          UserInfPage()
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.map), title: Text('MAP')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('FROUM')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('USER')),
        ],
      ),
    );
  }
}