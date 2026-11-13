import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('spacing stays on the 4 dp grid', () {
    const values = [
      AppSpacing.space1,
      AppSpacing.space2,
      AppSpacing.space3,
      AppSpacing.space4,
      AppSpacing.space5,
      AppSpacing.space6,
      AppSpacing.space8,
      AppSpacing.space10,
      AppSpacing.space12,
      AppSpacing.space16,
    ];

    for (final value in values) {
      expect(value % 4, 0);
    }
  });

  test('border radii match the radius tokens', () {
    expect(AppRadii.borderMd.topLeft.x, AppRadii.md);
    expect(AppRadii.borderXl.bottomRight.x, AppRadii.xl);
  });
}
