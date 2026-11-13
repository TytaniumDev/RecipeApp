import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

/// Grocery lists. See `GroceryList` in `packages/domain`.
@DataClassName('GroceryListRow')
class GroceryLists extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

/// Grocery list items. See `GroceryItem`.
@DataClassName('GroceryItemRow')
@TableIndex(name: 'grocery_items_list', columns: {#listId})
class GroceryItems extends Table {
  TextColumn get id => text()();
  TextColumn get listId => text()();
  TextColumn get name => text()();
  TextColumn get sortKey => text()();
  IntColumn get quantityNumerator => integer().nullable()();
  IntColumn get quantityDenominator => integer().nullable()();
  TextColumn get unit => textEnum<Unit>().nullable()();
  TextColumn get storeSection => text().nullable()();
  BoolColumn get checked => boolean().withDefault(const Constant(false))();
  TextColumn get sourceIngredientLineId => text().nullable()();
  TextColumn get sourceRecipeId => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
