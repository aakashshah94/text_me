import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_me/widgets/ChatAppBar.dart';

void main() {
  const MaterialApp app = const MaterialApp(
      home: Scaffold(
    body: const ChatAppBar(),
  ));

  testWidgets('ChatAppBar UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);
    expect(find.text('Aakash Shah'), findsOneWidget);
    expect(find.text('@aaki94'), findsOneWidget);
    expect(find.byType(IconButton), findsNWidgets(1));
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
