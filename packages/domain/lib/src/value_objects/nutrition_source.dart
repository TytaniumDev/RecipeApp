/// Where a food and its nutrients came from (ENGINEERING.md §11).
enum NutritionSource {
  /// USDA FoodData Central, bundled generic foods or fetched branded foods.
  usda,

  /// Open Food Facts, fetched online and cached (ODbL licensed).
  openFoodFacts,
}
