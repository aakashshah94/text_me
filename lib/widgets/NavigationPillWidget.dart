import 'package:flutter/material.dart';
import 'package:text_me/config/Assets/Palette.dart';

class NavigationPillWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Center(
              child: Wrap(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    width: 50,
                    height: 5,
                    decoration: new BoxDecoration(
                        color: Palette.accentColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
