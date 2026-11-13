import 'dart:async';

import 'package:material_ui/material_ui.dart';

/// A progress indicator that appears only after [delay], so fast loads
/// don't flash a spinner (DESIGN_SYSTEM.md §10.8).
class DelayedProgressIndicator extends StatefulWidget {
  const new({super.key, this.delay = const Duration(milliseconds: 300)});

  final Duration delay;

  @override
  State<DelayedProgressIndicator> createState() =>
      _DelayedProgressIndicatorState();
}

class _DelayedProgressIndicatorState extends State<DelayedProgressIndicator> {
  late final Timer _timer;
  var _visible = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer(widget.delay, () => setState(() => _visible = true));
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Center(
    child: _visible ? const CircularProgressIndicator() : const SizedBox(),
  );
}
