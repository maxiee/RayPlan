import 'package:flutter/material.dart';
import 'package:ray_plan/comp/base/functional_sateful_widget.dart';
import 'package:ray_plan/widget/message_card.dart';

class CompStringInput extends FunctionalStatefulWidget<String> {
  CompStringInput(
      {super.key, required this.title, this.confirm = 'OK', this.defaultValue});

  final String title;
  final String confirm;
  final String? defaultValue;

  @override
  State<CompStringInput> createState() => _CompStringInputState();
}

class _CompStringInputState extends State<CompStringInput> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.defaultValue != null) {
      controller.text = widget.defaultValue!;
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MessageCard(
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Text(widget.title),
        SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: TextField(controller: controller)),
        OutlinedButton(
            onPressed: () => widget.completer.complete(controller.text),
            child: Text(widget.confirm))
      ]),
    );
  }
}
