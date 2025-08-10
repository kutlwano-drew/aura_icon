import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aura_icon/aura_icon.dart';

void main() {
  group('AuraIcon Widget Tests', () {
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

    testWidgets('AuraIcon uses provided size and radius',
        (WidgetTester tester) async {
      const double expectedSize = 200;
      const double expectedRadius = 30;

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AuraIcon(
              size: expectedSize,
              radius: expectedRadius,
            ),
          ),
        ),
      );

      final auraIconWidget = tester.widget<AuraIcon>(find.byType(AuraIcon));

      expect(auraIconWidget.size, expectedSize);
      expect(auraIconWidget.radius, expectedRadius);
    });

    testWidgets('Multiple AuraIcons can render together',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Column(
              children: [
                AuraIcon(size: 100, radius: 20),
                AuraIcon(size: 150, radius: 25),
                AuraIcon(size: 200, radius: 30),
              ],
            ),
          ),
        ),
      );

      // Check that all three AuraIcons are present
      expect(find.byType(AuraIcon), findsNWidgets(3));
    });
  });
}
