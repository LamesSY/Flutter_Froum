import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';






class UserFollow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];

  final _saved = new Set<WordPair>();

  final _biggerFont = const TextStyle(fontSize: 18.0);

  var random = Random();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('粉丝列表'),
        actions: <Widget>[
          new FlatButton(onPressed: _pushSaved, child: Text("关注")),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    int id = random.nextInt(500);
    return new ListTile(
      leading: Icon(Icons.person_pin,size: 60.0,color: Colors.blue,),
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      subtitle: Text(pair.asPascalCase),
      trailing: new Icon(
        alreadySaved ? Icons.star : Icons.star_border,
        color: alreadySaved ? Colors.yellow[700] : null,
      ),
      onTap: () {
        setState(
          () {
            if (alreadySaved) {
              _saved.remove(pair);
            } else {
              _saved.add(pair);
            }
          },
        );
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _saved.map(
            (pair) {
              return new ListTile(
                leading: Icon(Icons.person_pin, size: 60, color: Colors.blue,),
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
                subtitle: Text(pair.asPascalCase),
              );
            },
          );
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return new Scaffold(
            appBar: new AppBar(
              title: new Text('关注列表'),
            ),
            body: new ListView(children: divided),
          );
        },
      ),
    );
  }
}
