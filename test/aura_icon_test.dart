import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aura_icon/aura_icon.dart';

void main() {
  testWidgets('AuraIcon renders without errors', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AuraIcon(
            size: 150,
            radius: 25,
          ),
        ),
      ),
    );

    // Confirm that AuraIcon is found in the widget tree
    expect(find.byType(AuraIcon), findsOneWidget);
  });
}
