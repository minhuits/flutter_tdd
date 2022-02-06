import 'package:flutter/material.dart';
import 'package:flutter_tdd/scroll_testing.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ScrollTestingWidget', () {
    testWidgets('should not scroll with less items.',
        (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(
        MaterialApp(
          home: ScrollTestWidget(
            bookTitles: List.generate(5, (index) => 'Book $index'),
          ),
        ),
      );

      await widgetTester.drag(find.byType(ListView), const Offset(0, -300));
      await widgetTester.pump();

      final firstBookFinder = find.text('Book 0');
      expect(firstBookFinder, findsOneWidget);
    });

    testWidgets('should scroll with a lot items.',
        (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(
        MaterialApp(
          home: ScrollTestWidget(
            bookTitles: List.generate(300, (index) => 'Book $index'),
          ),
        ),
      );

      await widgetTester.drag(find.byType(ListView), const Offset(0, -300));
      await widgetTester.pump();

      final firstBookFinder = find.text('Book 0');
      final elevenBookFinder = find.text('Book 11');
      final listTilesFinder = find.byType(ListTile);

      expect(firstBookFinder, findsNothing);
      expect(elevenBookFinder, findsOneWidget);
      expect(listTilesFinder, findsNWidgets(11));
    });

    testWidgets('should show only 2 on small screen size',
        (WidgetTester widgetTester) async {
      widgetTester.binding.window.physicalSizeTestValue = const Size(320, 350);

      await widgetTester.pumpWidget(
        MaterialApp(
          home: ScrollTestWidget(
            bookTitles: List.generate(2, (index) => 'Book $index'),
          ),
        ),
      );

      expect(find.byType(ListTile), findsNWidgets(2));
    });
  });
}
