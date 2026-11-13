/// What a [Unit] measures.
enum UnitDimension { volume, mass, count }

/// A measuring unit the app understands.
///
/// Display text (such as "Tbsp" or "cups") is not stored here. It is
/// formatted by `packages/measuring` and localized in the app.
enum Unit {
  teaspoon(UnitDimension.volume),
  tablespoon(UnitDimension.volume),
  fluidOunce(UnitDimension.volume),
  cup(UnitDimension.volume),
  pint(UnitDimension.volume),
  quart(UnitDimension.volume),
  gallon(UnitDimension.volume),
  milliliter(UnitDimension.volume),
  liter(UnitDimension.volume),
  gram(UnitDimension.mass),
  kilogram(UnitDimension.mass),
  ounce(UnitDimension.mass),
  pound(UnitDimension.mass),
  pinch(UnitDimension.count),
  piece(UnitDimension.count);

  new(this.dimension);

  /// What this unit measures.
  final UnitDimension dimension;
}
