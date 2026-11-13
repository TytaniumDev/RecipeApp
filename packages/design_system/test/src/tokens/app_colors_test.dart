import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  group(AppColors, () {
    test('copyWith replaces one color', () {
      const red = Color(0xFFFF0000);

      final copy = AppColors.light.copyWith(protein: red);

      expect(copy.protein, red);
      expect(copy.fat, AppColors.light.fat);
      expect(copy, isNot(AppColors.light));
    });

    test('copyWith with no changes is equal', () {
      expect(AppColors.light.copyWith(), AppColors.light);
      expect(AppColors.light.copyWith().hashCode, AppColors.light.hashCode);
    });

    test('lerps between schemes', () {
      expect(AppColors.light.lerp(AppColors.dark, 0), AppColors.light);
      expect(AppColors.light.lerp(AppColors.dark, 1), AppColors.dark);
      expect(AppColors.light.lerp(null, 0.5), AppColors.light);
    });
  });
}
