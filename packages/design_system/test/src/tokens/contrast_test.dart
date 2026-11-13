import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

/// Checks every text pair in DESIGN_SYSTEM.md §4 against its contrast
/// target: 4.5:1 in the standard schemes, 7:1 in the cooking schemes (§12).
void main() {
  final schemes = <String, (ColorScheme, AppColors, double)>{
    'light': (AppColorSchemes.light, AppColors.light, 4.5),
    'dark': (AppColorSchemes.dark, AppColors.dark, 4.5),
    'cooking light': (AppColorSchemes.cookingLight, AppColors.cookingLight, 7),
    'cooking dark': (AppColorSchemes.cookingDark, AppColors.cookingDark, 7),
  };

  for (final MapEntry(key: name, value: (scheme, app, target))
      in schemes.entries) {
    group('$name scheme', () {
      final surfaces = {
        'surface': scheme.surface,
        'surface-container-lowest': scheme.surfaceContainerLowest,
        'surface-container-low': scheme.surfaceContainerLow,
        'surface-container': scheme.surfaceContainer,
        'surface-container-high': scheme.surfaceContainerHigh,
        'surface-container-highest': scheme.surfaceContainerHighest,
      };

      final pairs = <String, (Color, Color)>{
        'on-primary on primary': (scheme.onPrimary, scheme.primary),
        'on-primary-container on primary-container': (
          scheme.onPrimaryContainer,
          scheme.primaryContainer,
        ),
        'on-secondary on secondary': (scheme.onSecondary, scheme.secondary),
        'on-secondary-container on secondary-container': (
          scheme.onSecondaryContainer,
          scheme.secondaryContainer,
        ),
        'on-tertiary on tertiary': (scheme.onTertiary, scheme.tertiary),
        'on-tertiary-container on tertiary-container': (
          scheme.onTertiaryContainer,
          scheme.tertiaryContainer,
        ),
        'on-error on error': (scheme.onError, scheme.error),
        'on-error-container on error-container': (
          scheme.onErrorContainer,
          scheme.errorContainer,
        ),
        'inverse-on-surface on inverse-surface': (
          scheme.onInverseSurface,
          scheme.inverseSurface,
        ),
        'on-protein-container on protein-container': (
          app.onProteinContainer,
          app.proteinContainer,
        ),
        'on-carbs-container on carbs-container': (
          app.onCarbsContainer,
          app.carbsContainer,
        ),
        'on-fat-container on fat-container': (
          app.onFatContainer,
          app.fatContainer,
        ),
        'on-warning-container on warning-container': (
          app.onWarningContainer,
          app.warningContainer,
        ),
        for (final MapEntry(key: surface, value: color)
            in surfaces.entries) ...{
          'on-surface on $surface': (scheme.onSurface, color),
          'on-surface-variant on $surface': (scheme.onSurfaceVariant, color),
          'primary on $surface': (scheme.primary, color),
        },
        for (final MapEntry(key: surface, value: color)
            in surfaces.entries) ...{
          'protein on $surface': (app.protein, color),
          'carbs on $surface': (app.carbs, color),
          'fat on $surface': (app.fat, color),
          'warning on $surface': (app.warning, color),
        },
      };

      for (final MapEntry(key: label, value: (foreground, background))
          in pairs.entries) {
        test('$label meets $target:1', () {
          expect(
            _contrast(foreground, background),
            greaterThanOrEqualTo(target),
          );
        });
      }
    });
  }
}

double _contrast(Color a, Color b) {
  final la = a.computeLuminance();
  final lb = b.computeLuminance();
  final (lighter, darker) = la > lb ? (la, lb) : (lb, la);
  return (lighter + 0.05) / (darker + 0.05);
}
