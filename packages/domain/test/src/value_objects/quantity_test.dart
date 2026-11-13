import 'package:domain/domain.dart';
import 'package:test/test.dart';

void main() {
  group(Quantity, () {
    group('constructor', () {
      test('reduces to lowest terms', () {
        final quantity = Quantity(6, 8);

        expect(quantity.numerator, 3);
        expect(quantity.denominator, 4);
      });

      test('keeps the sign on the numerator', () {
        expect(Quantity(1, -2), Quantity(-1, 2));
        expect(Quantity(-1, -2), Quantity(1, 2));
        expect(Quantity(1, -2).denominator, 2);
      });

      test('defaults the denominator to 1', () {
        expect(Quantity(3), Quantity(6, 2));
      });

      test('normalizes zero', () {
        expect(Quantity(0, 5), Quantity.zero);
        expect(Quantity(0, -5).denominator, 1);
      });

      test('throws when the denominator is zero', () {
        expect(() => Quantity(1, 0), throwsArgumentError);
      });
    });

    group('arithmetic', () {
      test('one third times three is exactly one', () {
        expect(Quantity(1, 3) * Quantity(3), Quantity.one);
      });

      test('adds', () {
        expect(Quantity(1, 2) + Quantity(1, 4), Quantity(3, 4));
      });

      test('subtracts', () {
        expect(Quantity(3, 4) - Quantity(1, 4), Quantity(1, 2));
      });

      test('negates', () {
        expect(-Quantity(1, 2), Quantity(-1, 2));
      });

      test('divides', () {
        expect(Quantity(3, 4) / Quantity(1, 4), Quantity(3));
      });

      test('throws when dividing by zero', () {
        expect(() => Quantity.one / Quantity.zero, throwsArgumentError);
      });
    });

    group('comparison', () {
      test('compares by value', () {
        expect(Quantity(1, 3) < Quantity(1, 2), isTrue);
        expect(Quantity(1, 2) <= Quantity(2, 4), isTrue);
        expect(Quantity(2, 3) > Quantity(1, 2), isTrue);
        expect(Quantity(2, 4) >= Quantity(1, 2), isTrue);
        expect(Quantity(1, 2).compareTo(Quantity(1, 2)), 0);
      });

      test('has value equality', () {
        expect(Quantity(2, 4), Quantity(1, 2));
        expect(Quantity(2, 4).hashCode, Quantity(1, 2).hashCode);
        expect(Quantity(1, 2), isNot(Quantity(1, 3)));
      });
    });

    group('parts', () {
      test('splits a mixed number', () {
        final quantity = Quantity(7, 2);

        expect(quantity.wholePart, 3);
        expect(quantity.fractionalPart, Quantity(1, 2));
      });

      test('splits a negative mixed number toward zero', () {
        final quantity = Quantity(-7, 2);

        expect(quantity.wholePart, -3);
        expect(quantity.fractionalPart, Quantity(-1, 2));
      });

      test('reports whole, zero, and negative', () {
        expect(Quantity(4, 2).isWhole, isTrue);
        expect(Quantity(1, 2).isWhole, isFalse);
        expect(Quantity.zero.isZero, isTrue);
        expect(Quantity(-1, 2).isNegative, isTrue);
        expect(Quantity(1, 2).isNegative, isFalse);
      });
    });

    test('converts to double', () {
      expect(Quantity(3, 4).toDouble(), 0.75);
    });

    test('prints a debug form', () {
      expect(Quantity(3, 2).toString(), '3/2');
      expect(Quantity(2).toString(), '2');
    });
  });
}
