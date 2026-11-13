// The ids are created at runtime on purpose, as they are in app code.
// ignore_for_file: prefer_const_constructors

import 'package:domain/domain.dart';
import 'package:test/test.dart';

void main() {
  test('every id wraps its string value', () {
    final values = [
      RecipeId('1').value,
      IngredientLineId('2').value,
      IngredientSectionId('3').value,
      StepSectionId('4').value,
      RecipeStepId('5').value,
      FolderId('6').value,
      NutritionMatchId('7').value,
      FoodId('8').value,
      FoodPortionId('9').value,
      RecipeVersionId('10').value,
      ExperimentId('11').value,
      GroceryListId('12').value,
      GroceryItemId('13').value,
      MeasuringToolId('14').value,
    ];

    expect(values, List.generate(14, (i) => '${i + 1}'));
  });
}
