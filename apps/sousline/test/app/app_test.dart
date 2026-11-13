import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:sousline/app/app.dart';
import 'package:sousline/features/settings/settings.dart';

void main() {
  group(SouslineApp, () {
    testWidgets('follows the theme mode setting', (tester) async {
      final container = ProviderContainer.test();
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: const SouslineApp(),
        ),
      );
      MaterialApp app() => tester.widget(find.byType(MaterialApp));
      expect(app().themeMode, ThemeMode.system);

      container
          .read(themeModeControllerProvider.notifier)
          .select(ThemeMode.dark);
      await tester.pump();

      expect(app().themeMode, ThemeMode.dark);
    });

    testWidgets('sets the window title', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: SouslineApp()));
      await tester.pumpAndSettle();

      final title = tester.widget<Title>(find.byType(Title));
      expect(title.title, 'Sousline');
    });
  });
}
