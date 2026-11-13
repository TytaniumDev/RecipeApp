import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:recipe_app/shared/widgets/async_value_view.dart';

import '../../helpers/helpers.dart';

void main() {
  group(AsyncValueView, () {
    Widget view(AsyncValue<String> value) =>
        AsyncValueView(value: value, data: Text.new);

    testWidgets('shows data', (tester) async {
      await tester.pumpApp(view(const AsyncData('Oatmeal')));

      expect(find.text('Oatmeal'), findsOneWidget);
    });

    testWidgets('waits 300 ms before showing progress', (tester) async {
      await tester.pumpApp(view(const AsyncLoading()));
      expect(find.byType(CircularProgressIndicator), findsNothing);

      await tester.pump(const Duration(milliseconds: 300));
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('shows a generic message on error', (tester) async {
      await tester.pumpApp(view(const AsyncError('boom', StackTrace.empty)));

      expect(find.text('Something went wrong.'), findsOneWidget);
    });

    testWidgets('uses custom loading and error builders', (tester) async {
      await tester.pumpApp(
        AsyncValueView<String>(
          value: const AsyncLoading(),
          data: Text.new,
          loading: () => const Text('loading'),
        ),
      );
      expect(find.text('loading'), findsOneWidget);

      await tester.pumpApp(
        AsyncValueView<String>(
          value: const AsyncError('boom', StackTrace.empty),
          data: Text.new,
          error: (error, _) => Text('failed: $error'),
        ),
      );
      expect(find.text('failed: boom'), findsOneWidget);
    });
  });
}
