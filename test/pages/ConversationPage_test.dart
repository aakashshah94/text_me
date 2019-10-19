import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_me/pages/ConversationPage.dart';
import 'package:text_me/widgets/ChatAppBar.dart';
import 'package:text_me/widgets/ChatListWidget.dart';
import 'package:text_me/widgets/InputWidget.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(body: const ConversationPage()),
  );

  testWidgets("Test conversationPage UI", (WidgetTester tester) async {
    tester.pumpWidget(app);
    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
  });
}
