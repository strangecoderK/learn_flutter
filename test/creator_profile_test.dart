
import 'package:flutter_test/flutter_test.dart';

import 'package:learn_flutter/main.dart';

void main() {
  testWidgets('creator dialog test', (tester) async {
    await tester.pumpWidget(const MyApp());
    // expect(find.text('follow'), findsOneWidget);
  });
}
