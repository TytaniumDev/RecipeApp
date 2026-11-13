import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(SpringCurve, () {
    test('starts at 0 and ends at 1', () {
      final curve = SpringCurve(AppMotion.spatialDefault);

      expect(curve.transform(0), 0);
      expect(curve.transform(1), 1);
    });

    test('spatial springs overshoot a little', () {
      final curve = SpringCurve(AppMotion.spatialFast);
      final samples = List.generate(101, (i) => curve.transform(i / 100));

      expect(samples.reduce((a, b) => a > b ? a : b), greaterThan(1));
    });

    test('effects springs never overshoot', () {
      for (final spring in [
        AppMotion.effectsFast,
        AppMotion.effectsDefault,
        AppMotion.effectsSlow,
      ]) {
        final curve = SpringCurve(spring);
        final samples = List.generate(101, (i) => curve.transform(i / 100));

        expect(samples.every((value) => value <= 1.0001), isTrue);
      }
    });

    test('settles faster for stiffer springs', () {
      final fast = SpringCurve(AppMotion.effectsFast).duration;
      final slow = SpringCurve(AppMotion.spatialSlow).duration;

      expect(fast, greaterThan(Duration.zero));
      expect(fast, lessThan(slow));
      expect(slow, lessThan(const Duration(seconds: 3)));
    });
  });
}
