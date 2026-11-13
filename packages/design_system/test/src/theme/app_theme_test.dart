import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  group(AppTheme, () {
    final themes = {
      'light': (AppTheme.light(), AppColorSchemes.light, AppColors.light),
      'dark': (AppTheme.dark(), AppColorSchemes.dark, AppColors.dark),
      'cooking light': (
        AppTheme.cooking(Brightness.light),
        AppColorSchemes.cookingLight,
        AppColors.cookingLight,
      ),
      'cooking dark': (
        AppTheme.cooking(Brightness.dark),
        AppColorSchemes.cookingDark,
        AppColors.cookingDark,
      ),
    };

    for (final MapEntry(key: name, value: (theme, scheme, appColors))
        in themes.entries) {
      group(name, () {
        test('uses its color scheme and custom colors', () {
          expect(theme.colorScheme, scheme);
          expect(theme.extension<AppColors>(), appColors);
          expect(theme.extension<AppTypography>(), AppTypography.standard);
        });

        test('pins comfortable density on every platform', () {
          expect(theme.visualDensity, VisualDensity.standard);
        });

        test('uses Newsreader for titles and Plus Jakarta Sans for body', () {
          expect(
            theme.textTheme.headlineLarge!.fontFamily,
            _font('Newsreader'),
          );
          expect(theme.textTheme.titleLarge!.fontFamily, _font('Newsreader'));
          expect(
            theme.textTheme.titleMedium!.fontFamily,
            _font('Plus Jakarta Sans'),
          );
          expect(
            theme.textTheme.bodyLarge!.fontFamily,
            _font('Plus Jakarta Sans'),
          );
        });

        test('keeps Material sizes', () {
          expect(theme.textTheme.headlineLarge!.fontSize, 32);
          expect(theme.textTheme.bodyLarge!.fontSize, 16);
        });

        test('shows elevation with surfaces, not tint', () {
          expect(theme.colorScheme.surfaceTint.a, 0);
          expect(theme.cardTheme.elevation, 0);
          expect(theme.cardTheme.color, scheme.surfaceContainerLow);
        });
      });
    }
  });
}

String _font(String family) => 'packages/design_system/$family';
