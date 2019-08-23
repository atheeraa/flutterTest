import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        body: Center(
          //child: Text('Hello World'),   // Replace this text...
          child: RandomWords(),
        ),
      ),
    );
  }
}
class RandomWordsState extends State<RandomWords> {
  @override                                  // Add from this line ...
  Widget build(BuildContext context) {
    final WordPair wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}