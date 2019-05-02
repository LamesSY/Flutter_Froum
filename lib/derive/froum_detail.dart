import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';




class FroumDetail extends StatefulWidget {
  @override
  _FroumDetailState createState() => _FroumDetailState();
}

class _FroumDetailState extends State<FroumDetail> {


  @override
  Widget build(BuildContext context) {
    WordPair pair = WordPair.random();
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 260.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(pair.asPascalCase),
              background: Image(image: NetworkImage("https://picsum.photos/610/420")),
            ),
          ),
          SliverPadding(
              padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 4.0
                ),
              delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                return Container(
                  alignment: Alignment.center,
                  color: Colors.white,
//                  child: Text("grid item $index"),
                  child: ListTile(
                    leading: Icon(Icons.face,size: 40.0,color: Colors.blue,),
                    title: Text("User No.$index",style: TextStyle(color: Colors.blue),),
                    subtitle: Text("it is a state and the index is $index"),
                  ),
                );
              },
              childCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }



}
