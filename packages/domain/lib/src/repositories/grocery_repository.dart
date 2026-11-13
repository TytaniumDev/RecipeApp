// An interface has no code to run; only its empty primary constructor
// would show up, as an uncovered line.
// coverage:ignore-file

import 'package:domain/src/entities/grocery_item.dart';
import 'package:domain/src/entities/grocery_list.dart';
import 'package:domain/src/value_objects/ids.dart';

/// Grocery lists and their items (PRD 7.7).
abstract interface class GroceryRepository() {
  Stream<List<GroceryList>> watchLists();

  /// Items in sort order.
  Stream<List<GroceryItem>> watchItems(GroceryListId listId);

  Future<void> saveList(GroceryList list);

  Future<void> deleteList(GroceryListId id);

  Future<void> saveItem(GroceryItem item);

  Future<void> deleteItem(GroceryItemId id);
}
