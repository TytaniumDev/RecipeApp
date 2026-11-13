import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/l10n/l10n.dart';
import 'package:recipe_app/shared/widgets/delayed_progress_indicator.dart';

/// Shows an [AsyncValue] the same way everywhere (ENGINEERING.md §6):
/// a delayed progress indicator while loading, [data] once loaded, and an
/// error message otherwise.
///
/// ```dart
/// AsyncValueView(
///   value: ref.watch(recipeTitleProvider(id)),
///   data: (title) => Text(title),
/// )
/// ```
class AsyncValueView<T> extends StatelessWidget {
  const new({
    required this.value,
    required this.data,
    this.loading,
    this.error,
    super.key,
  });

  final AsyncValue<T> value;

  /// Builds the loaded state.
  final Widget Function(T data) data;

  /// Replaces the default delayed progress indicator.
  final Widget Function()? loading;

  /// Replaces the default error message.
  final Widget Function(Object error, StackTrace stackTrace)? error;

  @override
  Widget build(BuildContext context) => value.when(
    data: data,
    loading: loading ?? () => const DelayedProgressIndicator(),
    error: error ?? (_, _) => const _ErrorMessage(),
  );
}

class _ErrorMessage extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) =>
      Center(child: Text(context.l10n.common_errorGeneric));
}
