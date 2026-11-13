import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'helpers.dart';

class _Counter extends StatefulWidget {
  const new();

  @override
  State<_Counter> createState() => _CounterState();
}

class _CounterState extends State<_Counter> {
  var _count = 0;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      TextButton(
        onPressed: () => setState(() => _count++),
        child: _Label(key: const ValueKey('label'), count: _count),
      ),
      const _Static(),
    ],
  );
}

class _Label extends StatelessWidget {
  const new({required this.count, super.key});

  final int count;

  @override
  Widget build(BuildContext context) => Text('$count');
}

class _Static extends StatelessWidget {
  const new();

  @override
  Widget build(BuildContext context) => const Text('static');
}

void main() {
  group(BuildCounter, () {
    testWidgets('counts rebuilds by type and by key', (tester) async {
      final builds = BuildCounter.start();
      await tester.pumpApp(const _Counter());
      expect(builds.of<_Label>(), 1);

      builds.reset();
      await tester.tap(find.byType(TextButton));
      await tester.pump();

      expect(builds.of<_Counter>(), 1);
      expect(builds.of<_Label>(), 1);
      expect(builds.ofKey(const ValueKey('label')), 1);
      // A const child is skipped when its parent rebuilds.
      expect(builds.of<_Static>(), 0);
    });
  });
}
