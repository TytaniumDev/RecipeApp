/// What a [Unit] measures.
enum UnitDimension { volume, mass, count }

/// A measuring unit the app understands.
///
/// Display text (such as "Tbsp" or "cups") is not stored here. It is
/// formatted by `packages/measuring` and localized in the app.
enum Unit(
  /// What this unit measures.
  final UnitDimension dimension,
) {
  teaspoon(.volume),
  tablespoon(.volume),
  fluidOunce(.volume),
  cup(.volume),
  pint(.volume),
  quart(.volume),
  gallon(.volume),
  milliliter(.volume),
  liter(.volume),
  gram(.mass),
  kilogram(.mass),
  ounce(.mass),
  pound(.mass),
  pinch(.count),
  piece(.count),
}
