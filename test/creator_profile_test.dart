import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter/01_widget_rule/presentation/main_screen.dart';

void main() {
  testWidgets('creator dialog test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: MainScreen()));
    // expect(find.text('follow'), findsOneWidget);
  });
}
