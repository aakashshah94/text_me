import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_me/main.dart';

void main() {
  testWidgets('ChatListWidget UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(TextMe());
    expect(find.byType(ListView), findsOneWidget);
  });
}
