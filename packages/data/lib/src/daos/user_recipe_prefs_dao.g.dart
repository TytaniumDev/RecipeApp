// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_recipe_prefs_dao.dart';

// ignore_for_file: type=lint
mixin _$UserRecipePrefsDaoMixin on DatabaseAccessor<AppDatabase> {
  $UserRecipePrefsTableTable get userRecipePrefsTable =>
      attachedDatabase.userRecipePrefsTable;
  UserRecipePrefsDaoManager get managers => UserRecipePrefsDaoManager(this);
}

class UserRecipePrefsDaoManager {
  final _$UserRecipePrefsDaoMixin _db;
  UserRecipePrefsDaoManager(this._db);
  $$UserRecipePrefsTableTableTableManager get userRecipePrefsTable =>
      $$UserRecipePrefsTableTableTableManager(
        _db.attachedDatabase,
        _db.userRecipePrefsTable,
      );
}
