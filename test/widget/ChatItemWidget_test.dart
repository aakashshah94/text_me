import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_me/widgets/ChatItemWidget.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(
      body: const ChatItemWidget(0),
    ),
  );

  testWidgets('ChatItem widget UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.byType(Container), findsNWidgets(3));
    expect(find.byType(Column), findsNWidgets(1));
    expect(find.byType(Row), findsNWidgets(2));
    expect(find.byType(Text), findsNWidgets(2));
  });
}
