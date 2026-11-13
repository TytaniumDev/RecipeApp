// An interface has no code to run; only its empty primary constructor
// would show up, as an uncovered line.
// coverage:ignore-file

import 'package:domain/src/entities/user_recipe_prefs.dart';
import 'package:domain/src/value_objects/ids.dart';

/// This user's per-recipe settings, such as serving size.
abstract interface class UserRecipePrefsRepository() {
  /// Null until the user changes a setting for this recipe.
  Stream<UserRecipePrefs?> watchPrefs(RecipeId recipeId);

  Future<void> savePrefs(UserRecipePrefs prefs);
}
