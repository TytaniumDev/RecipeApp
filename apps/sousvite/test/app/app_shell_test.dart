import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:sousvite/app/app.dart';

void main() {
  group('AppShell', () {
    Future<void> pumpAt(WidgetTester tester, Size size) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);
      await tester.pumpWidget(const ProviderScope(child: SousviteApp()));
      await tester.pumpAndSettle();
    }

    testWidgets('uses a bottom navigation bar on phones', (tester) async {
      await pumpAt(tester, const Size(400, 800));

      expect(find.byType(NavigationBar), findsOneWidget);
      expect(find.byType(NavigationRail), findsNothing);
    });

    testWidgets('uses a navigation rail on tablets', (tester) async {
      await pumpAt(tester, const Size(700, 1000));

      expect(find.byType(NavigationRail), findsOneWidget);
      expect(find.byType(NavigationBar), findsNothing);
    });

    testWidgets('extends the rail on wide windows', (tester) async {
      await pumpAt(tester, const Size(1300, 900));

      final rail = tester.widget<NavigationRail>(find.byType(NavigationRail));
      expect(rail.extended, isTrue);
    });

    testWidgets('switches between destinations', (tester) async {
      await pumpAt(tester, const Size(400, 800));

      await tester.tap(
        find.descendant(
          of: find.byType(NavigationBar),
          matching: find.text('Grocery list'),
        ),
      );
      await tester.pumpAndSettle();
      expect(
        find.descendant(
          of: find.byType(AppBar),
          matching: find.text('Grocery list'),
        ),
        findsOneWidget,
      );

      await tester.tap(
        find.descendant(
          of: find.byType(NavigationBar),
          matching: find.text('Library'),
        ),
      );
      await tester.pumpAndSettle();
      expect(
        find.descendant(
          of: find.byType(AppBar),
          matching: find.text('Library'),
        ),
        findsOneWidget,
      );
    });

    testWidgets('switches destinations from the rail', (tester) async {
      await pumpAt(tester, const Size(700, 1000));

      await tester.tap(
        find.descendant(
          of: find.byType(NavigationRail),
          matching: find.text('Settings'),
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.descendant(
          of: find.byType(AppBar),
          matching: find.text('Settings'),
        ),
        findsOneWidget,
      );
    });
  });
}
