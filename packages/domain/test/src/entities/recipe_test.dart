import 'package:domain/domain.dart';
import 'package:test/test.dart';

void main() {
  group(Recipe, () {
    final created = DateTime.utc(2026, 11, 13);

    Recipe buildRecipe({String title = 'Oatmeal'}) => Recipe(
      id: const RecipeId('r1'),
      title: title,
      servings: Quantity(4),
      createdAt: created,
      updatedAt: created,
    );

    test('has value equality, so unchanged rows do not rebuild widgets', () {
      expect(buildRecipe(), buildRecipe());
      expect(buildRecipe().hashCode, buildRecipe().hashCode);
    });

    test('copyWith changes one field', () {
      final renamed = buildRecipe().copyWith(title: 'Overnight oats');

      expect(renamed.title, 'Overnight oats');
      expect(renamed, isNot(buildRecipe()));
      expect(renamed.copyWith(title: 'Oatmeal'), buildRecipe());
    });

    test('defaults notes to empty', () {
      expect(buildRecipe().notes, isEmpty);
    });
  });
}
