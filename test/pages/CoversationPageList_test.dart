import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_me/pages/ConversationPage.dart';
import 'package:text_me/pages/ConversationPageList.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(body: const ConversationPageList()),
  );

  testWidgets('testing ConversationPageList UI', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(ConversationPage), findsOneWidget);
    expect(find.byType(PageView), findsOneWidget);
  });
}
