import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:drift/drift.dart' hide isNotNull, isNull;
import 'package:drift/native.dart';
import 'package:test/test.dart';

void main() {
  late AppDatabase database;

  setUp(() {
    database = AppDatabase(NativeDatabase.memory());
  });

  tearDown(() => database.close());

  group(AppDatabase, () {
    test('creates every table on first open', () async {
      final rows = await database
          .customSelect(
            "SELECT name FROM sqlite_master WHERE type = 'table' "
            "AND name NOT LIKE 'sqlite_%'",
          )
          .get();
      final names = rows.map((row) => row.read<String>('name')).toSet();

      expect(names, {
        for (final table in database.allTables) table.actualTableName,
      });
      expect(names, hasLength(19));
    });

    test('registers one DAO per aggregate', () {
      expect(database.recipeDao, isA<RecipeDao>());
      expect(database.folderDao, isA<FolderDao>());
      expect(database.foodDao, isA<FoodDao>());
      expect(database.historyDao, isA<HistoryDao>());
      expect(database.groceryDao, isA<GroceryDao>());
      expect(database.measuringToolDao, isA<MeasuringToolDao>());
      expect(database.userRecipePrefsDao, isA<UserRecipePrefsDao>());
      expect(database.syncDao, isA<SyncDao>());
    });

    test('round-trips a recipe with an exact quantity and enum unit', () async {
      final created = DateTime.utc(2026, 11, 13);
      await database
          .into(database.recipes)
          .insert(
            RecipesCompanion.insert(
              id: 'r1',
              title: 'Oatmeal',
              servingsNumerator: 3,
              servingsDenominator: 2,
              createdAt: created,
              updatedAt: created,
            ),
          );
      await database
          .into(database.ingredientLines)
          .insert(
            IngredientLinesCompanion.insert(
              id: 'l1',
              recipeId: 'r1',
              rawText: '1 ½ cups rolled oats',
              sortKey: 'a0',
              unit: const Value(Unit.cup),
            ),
          );

      final recipe = await database.select(database.recipes).getSingle();
      final line = await database.select(database.ingredientLines).getSingle();

      expect(recipe.title, 'Oatmeal');
      expect(recipe.notes, isEmpty);
      expect(recipe.createdAt, created);
      expect(line.unit, Unit.cup);
    });
  });
}
