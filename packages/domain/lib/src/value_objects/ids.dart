/// Typed ids for every entity.
///
/// Each id is a zero-cost extension type over the stored string, so a
/// `RecipeId` can never be passed where a `RecipeStepId` is expected.
library;

extension type const RecipeId(String value);

extension type const IngredientLineId(String value);

extension type const IngredientSectionId(String value);

extension type const StepSectionId(String value);

extension type const RecipeStepId(String value);

extension type const FolderId(String value);

extension type const NutritionMatchId(String value);

extension type const FoodId(String value);

extension type const FoodPortionId(String value);

extension type const RecipeVersionId(String value);

extension type const ExperimentId(String value);

extension type const GroceryListId(String value);

extension type const GroceryItemId(String value);

extension type const MeasuringToolId(String value);
