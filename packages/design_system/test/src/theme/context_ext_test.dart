import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  testWidgets('reads theme values from the context', (tester) async {
    late BuildContext captured;
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.light(),
        home: Builder(
          builder: (context) {
            captured = context;
            return const SizedBox();
          },
        ),
      ),
    );

    expect(captured.colors, AppColorSchemes.light);
    expect(captured.appColors, AppColors.light);
    expect(captured.appText, AppTypography.standard);
    expect(captured.textStyles.bodyLarge!.fontSize, 16);
  });
}
