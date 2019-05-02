import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';


class FroumRelease extends StatefulWidget {
  @override
  _FroumReleaseState createState() => _FroumReleaseState();
}

class _FroumReleaseState extends State<FroumRelease> {
  File _image;

  void _pushSaved(){

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text("发布内容"),
          actions: <Widget>[
            FlatButton(
                onPressed: _pushSaved,
                child: Text(
                  "发送",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ))
          ],
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildTextField(),
                Divider(
                  color: Colors.blue.shade100,
                ),
                Divider(
                  color: Colors.blue.shade100,
                ),
                _image == null ? defaultImage() : myImageView(_image),
                Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        onPressed: getImage,
                        child: Icon(
                          Icons.add_photo_alternate,
                          size: 36.0,
                        )),
                    FlatButton(
                        onPressed: getCarema,
                        child: Icon(
                          Icons.camera_enhance,
                          size: 36.0,
                        )),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget defaultImage() {
    return Stack(
      children: <Widget>[
        FlatButton(onPressed: null, child: Icon(Icons.image,size: 200,),color: Colors.grey,)
//        Image.asset(
//          "images/grape.jpg",
//          height: 200.0,
//          width: 200.0,
//        ),
      ],
    );
  }

  Widget myImageView(File image) {
    return Image.file(
      image,
      fit: BoxFit.cover,
      height: 200.0,
      width: 200.0,
    );
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future getCarema() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Widget buildTextField() {
    return Flexible(
        child: TextField(
          textAlign: TextAlign.start,
          maxLines: 30,
          maxLengthEnforced: true,
          maxLength: 150,
          style: TextStyle(
          fontSize: 18.0,
      ),
      decoration: InputDecoration(
          labelText: '在此输入你的文字',
          contentPadding: EdgeInsets.all(12.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
      )
    );
  }



}
