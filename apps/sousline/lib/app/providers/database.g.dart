// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The app's one database connection, open for the app's lifetime.
///
/// SQLite on iOS and Android; WebAssembly SQLite on web, using
/// `web/sqlite3.wasm` and `web/drift_worker.js` (ENGINEERING.md §7). Tests
/// override this with `AppDatabase(NativeDatabase.memory())`.

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

/// The app's one database connection, open for the app's lifetime.
///
/// SQLite on iOS and Android; WebAssembly SQLite on web, using
/// `web/sqlite3.wasm` and `web/drift_worker.js` (ENGINEERING.md §7). Tests
/// override this with `AppDatabase(NativeDatabase.memory())`.

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  /// The app's one database connection, open for the app's lifetime.
  ///
  /// SQLite on iOS and Android; WebAssembly SQLite on web, using
  /// `web/sqlite3.wasm` and `web/drift_worker.js` (ENGINEERING.md §7). Tests
  /// override this with `AppDatabase(NativeDatabase.memory())`.
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'23f4687ef37d4b377395cf4e382db9a89933fadc';
