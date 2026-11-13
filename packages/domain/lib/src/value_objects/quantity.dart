import 'package:meta/meta.dart';

/// An exact rational amount, such as ⅓ or 1 ½.
///
/// Amounts are never stored as floating point numbers, so ⅓ cup × 3 is
/// exactly 1 cup (ENGINEERING.md §7). A [Quantity] is always normalized:
/// the fraction is fully reduced and the [denominator] is positive.
@immutable
final class const Quantity._(
  /// The numerator of the reduced fraction. Carries the sign.
  final int numerator,

  /// The denominator of the reduced fraction. Always positive.
  final int denominator,
) implements Comparable<Quantity> {
  /// Creates `numerator / denominator`, reduced to lowest terms.
  ///
  /// Throws an [ArgumentError] when [denominator] is zero.
  factory(int numerator, [int denominator = 1]) {
    if (denominator == 0) {
      throw ArgumentError.value(denominator, 'denominator', 'must not be 0');
    }
    final sign = denominator < 0 ? -1 : 1;
    final divisor = numerator.gcd(denominator);
    final safeDivisor = divisor == 0 ? 1 : divisor;
    return Quantity._(
      sign * numerator ~/ safeDivisor,
      sign * denominator ~/ safeDivisor,
    );
  }

  /// Zero.
  static const zero = Quantity._(0, 1);

  /// One.
  static const one = Quantity._(1, 1);

  /// Whether this is a whole number, such as 2.
  bool get isWhole => denominator == 1;

  /// Whether this is zero.
  bool get isZero => numerator == 0;

  /// Whether this is less than zero.
  bool get isNegative => numerator < 0;

  /// The whole-number part, truncated toward zero. For 7/2 this is 3.
  int get wholePart => numerator ~/ denominator;

  /// What is left after [wholePart]. For 7/2 this is 1/2.
  Quantity get fractionalPart =>
      Quantity._(numerator.remainder(denominator), denominator);

  Quantity operator +(Quantity other) => Quantity(
    numerator * other.denominator + other.numerator * denominator,
    denominator * other.denominator,
  );

  Quantity operator -(Quantity other) => this + (-other);

  Quantity operator -() => Quantity._(-numerator, denominator);

  Quantity operator *(Quantity other) =>
      Quantity(numerator * other.numerator, denominator * other.denominator);

  /// Throws an [ArgumentError] when [other] is zero.
  Quantity operator /(Quantity other) =>
      Quantity(numerator * other.denominator, denominator * other.numerator);

  bool operator <(Quantity other) => compareTo(other) < 0;

  bool operator <=(Quantity other) => compareTo(other) <= 0;

  bool operator >(Quantity other) => compareTo(other) > 0;

  bool operator >=(Quantity other) => compareTo(other) >= 0;

  @override
  int compareTo(Quantity other) =>
      (numerator * other.denominator).compareTo(other.numerator * denominator);

  /// The nearest [double]. Use only for display or for math that is
  /// inherently approximate, such as unit conversion to grams.
  double toDouble() => numerator / denominator;

  @override
  bool operator ==(Object other) =>
      other is Quantity &&
      other.numerator == numerator &&
      other.denominator == denominator;

  @override
  int get hashCode => Object.hash(numerator, denominator);

  /// A plain `numerator/denominator` form, such as `3/2`, for debugging.
  /// User-facing text is formatted by `packages/measuring`.
  @override
  String toString() => isWhole ? '$numerator' : '$numerator/$denominator';
}
