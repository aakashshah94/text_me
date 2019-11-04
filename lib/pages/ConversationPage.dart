import 'package:flutter/material.dart';
import 'package:text_me/config/Assets/Palette.dart';
import 'package:text_me/widgets/ChatAppBar.dart';
import 'package:text_me/widgets/ChatListWidget.dart';
import 'package:text_me/widgets/CoversationBottomSheet.dart';
import 'package:text_me/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage();

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      appBar: ChatAppBar(),
      body: Container(
        color: Palette.chatBackgroundColor,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(),
                GestureDetector(
                    child: InputWidget(),
                    onPanUpdate: (details) {
                      _scaffoldKey.currentState
                          .showBottomSheet<Null>((BuildContext context) {
                        return ConversationBottomSheet();
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
