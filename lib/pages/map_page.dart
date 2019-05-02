import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MapPage extends StatefulWidget{

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> with AutomaticKeepAliveClientMixin{
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => false;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
            child: WebviewScaffold(
                url: "https://map.baidu.com/mobile/webapp/index/index/foo=bar/vt=map",
              initialChild: Container(
                color: Colors.blue,
                child: Center(
                  child: Text("Loading...."),
                ),
              ),
            ),
          top: true,
        ),
      ),
    );
  }
}
//class MapPage extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: SafeArea(
//            child: WebviewScaffold(
//                url: "https://map.baidu.com/mobile/webapp/index/index/foo=bar/vt=map",
//              initialChild: Container(
//                color: Colors.blue,
//                child: Center(
//                  child: Text("Loading...."),
//                ),
//              ),
//            ),
//          top: true,
//        ),
//      ),
//    );
//  }
//}