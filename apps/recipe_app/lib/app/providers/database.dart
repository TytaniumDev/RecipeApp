import 'package:data/data.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database.g.dart';

/// The app's one database connection, open for the app's lifetime.
///
/// SQLite on iOS and Android; WebAssembly SQLite on web, using
/// `web/sqlite3.wasm` and `web/drift_worker.js` (ENGINEERING.md §7). Tests
/// override this with `AppDatabase(NativeDatabase.memory())`.
@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final database = AppDatabase(
    driftDatabase(
      name: 'recipe_app',
      web: DriftWebOptions(
        sqlite3Wasm: Uri.parse('sqlite3.wasm'),
        driftWorker: Uri.parse('drift_worker.js'),
      ),
    ),
  );
  ref.onDispose(database.close);
  return database;
}
