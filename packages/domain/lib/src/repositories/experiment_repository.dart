// An interface has no code to run; only its empty primary constructor
// would show up, as an uncovered line.
// coverage:ignore-file

import 'package:domain/src/entities/experiment.dart';
import 'package:domain/src/entities/recipe_version.dart';
import 'package:domain/src/value_objects/ids.dart';

/// A recipe's history: past versions and experiments (PRD 7.11).
abstract interface class ExperimentRepository() {
  /// Newest first.
  Stream<List<RecipeVersion>> watchVersions(RecipeId recipeId);

  /// Newest first.
  Stream<List<Experiment>> watchExperiments(RecipeId recipeId);

  Future<RecipeVersion?> getVersion(RecipeVersionId id);

  Future<Experiment?> getExperiment(ExperimentId id);

  Future<void> saveVersion(RecipeVersion version);

  Future<void> saveExperiment(Experiment experiment);

  Future<void> deleteExperiment(ExperimentId id);
}
