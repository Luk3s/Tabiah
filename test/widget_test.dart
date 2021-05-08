import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tabiah/core/app_config.dart';
import 'package:tabiah/screens/home_screen.dart';

void main() {
  testWidgets('Counter increments smoke test', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HomeScreen(
          config: DevConfig(),
        ),
      ),
    );

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
