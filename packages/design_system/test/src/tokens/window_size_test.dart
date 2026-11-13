import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  group(WindowSizeClass, () {
    test('maps widths to size classes', () {
      expect(WindowSizeClass.fromWidth(599), WindowSizeClass.compact);
      expect(WindowSizeClass.fromWidth(600), WindowSizeClass.medium);
      expect(WindowSizeClass.fromWidth(839), WindowSizeClass.medium);
      expect(WindowSizeClass.fromWidth(840), WindowSizeClass.expanded);
    });

    testWidgets('reads the window width from the context', (tester) async {
      late WindowSizeClass sizeClass;
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(size: Size(700, 800)),
          child: Builder(
            builder: (context) {
              sizeClass = WindowSizeClass.of(context);
              return const SizedBox();
            },
          ),
        ),
      );

      expect(sizeClass, WindowSizeClass.medium);
    });
  });
}
