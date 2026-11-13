import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  group(AppTypography, () {
    final standard = AppTypography.standard;

    test('numbers use tabular figures', () {
      for (final style in [
        standard.numberHero,
        standard.numberLarge,
        standard.number,
        standard.amount,
        standard.cookingAmount,
        standard.cookingTimer,
      ]) {
        expect(style.fontFeatures, const [FontFeature.tabularFigures()]);
      }
    });

    test('amount inherits the surrounding size', () {
      expect(standard.amount.fontSize, isNull);
      expect(standard.amount.fontWeight, FontWeight.w600);
    });

    test('cooking step sizes match the spec', () {
      expect(standard.cookingStep.fontSize, 28);
      expect(standard.cookingStep.height, 40 / 28);
      expect(standard.cookingStepLarge.fontSize, 34);
    });

    test('sets the weight with FontWeight, not a font variation', () {
      expect(standard.numberHero.fontWeight, FontWeight.w600);
      expect(standard.numberHero.fontVariations, isNull);
    });

    test('copyWith replaces one style', () {
      const style = TextStyle(fontSize: 1);

      expect(standard.copyWith(number: style).number, style);
      expect(standard.copyWith().numberHero, standard.numberHero);
    });

    test('lerps', () {
      final half = standard.lerp(standard, 0.5);

      expect(half.cookingStep.fontSize, 28);
      expect(standard.lerp(null, 0.5), same(standard));
    });
  });

  group('appTextStyle', () {
    test('accepts any weight the variable axis supports', () {
      final style = appTextStyle(family: AppFonts.sans, weight: 650);

      expect(style.fontWeight?.value, 650);
    });

    test('sets the optical size of Newsreader to the text size', () {
      final style = appTextStyle(family: AppFonts.serif, weight: 600, size: 32);

      expect(style.fontWeight, FontWeight.w600);
      expect(style.fontVariations, [const FontVariation.opticalSize(32)]);
    });

    test('leaves the optical size of Plus Jakarta Sans alone', () {
      final style = appTextStyle(family: AppFonts.sans, weight: 400, size: 16);

      expect(style.fontWeight, FontWeight.w400);
      expect(style.fontVariations, isNull);
    });
  });
}
