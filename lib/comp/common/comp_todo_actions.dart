import 'package:flutter/material.dart';
import 'package:ray_plan/comp/base/functional_sateful_widget.dart';

// return value is user selected action
class CompActions extends FunctionalStatefulWidget<String> {
  CompActions({super.key, required this.actions});

  final List<String> actions;

  @override
  State<CompActions> createState() => _CompActionsState();
}

class _CompActionsState extends State<CompActions> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: widget.actions
            .map((a) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: OutlinedButton(
                  onPressed: () => widget.completer.complete(a), child: Text(a)),
            ))
            .toList());
  }
}
