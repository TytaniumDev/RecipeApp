import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:sousvite/features/settings/settings.dart';

void main() {
  group(ThemeModeController, () {
    test('follows the system until the user picks', () {
      final container = ProviderContainer.test();

      expect(container.read(themeModeControllerProvider), ThemeMode.system);

      container
          .read(themeModeControllerProvider.notifier)
          .select(ThemeMode.light);

      expect(container.read(themeModeControllerProvider), ThemeMode.light);
    });
  });
}
