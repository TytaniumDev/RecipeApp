import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:sousvite/app/app.dart';
import 'package:sousvite/features/settings/settings.dart';

void main() {
  group(SousviteApp, () {
    testWidgets('follows the theme mode setting', (tester) async {
      final container = ProviderContainer.test();
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: const SousviteApp(),
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
      await tester.pumpWidget(const ProviderScope(child: SousviteApp()));
      await tester.pumpAndSettle();

      final title = tester.widget<Title>(find.byType(Title));
      expect(title.title, 'Sousvite');
    });
  });
}
