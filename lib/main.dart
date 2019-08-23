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
          child: Text("My name is Atheer and here is a random word \n' +wordPair.asPascalCase),  // With this text.
        ),
      ),
    );
  }
}