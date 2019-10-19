import 'package:flutter/material.dart';
import 'package:text_me/widgets/ChatAppBar.dart';
import 'package:text_me/widgets/ChatListWidget.dart';
import 'package:text_me/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage();

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: ChatAppBar(),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              ChatListWidget(),
              InputWidget(),
            ],
          )
        ],
      ),
    ));
  }
}
