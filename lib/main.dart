import 'package:flutter/material.dart';
import 'package:text_me/pages/ConversationPageList.dart';

void main() => runApp(TextMe());

class TextMe extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextMe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConversationPageList(),
    );
  }
}
