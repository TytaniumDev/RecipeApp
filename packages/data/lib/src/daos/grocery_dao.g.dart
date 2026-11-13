// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_dao.dart';

// ignore_for_file: type=lint
mixin _$GroceryDaoMixin on DatabaseAccessor<AppDatabase> {
  $GroceryListsTable get groceryLists => attachedDatabase.groceryLists;
  $GroceryItemsTable get groceryItems => attachedDatabase.groceryItems;
  GroceryDaoManager get managers => GroceryDaoManager(this);
}

class GroceryDaoManager {
  final _$GroceryDaoMixin _db;
  GroceryDaoManager(this._db);
  $$GroceryListsTableTableManager get groceryLists =>
      $$GroceryListsTableTableManager(_db.attachedDatabase, _db.groceryLists);
  $$GroceryItemsTableTableManager get groceryItems =>
      $$GroceryItemsTableTableManager(_db.attachedDatabase, _db.groceryItems);
}
