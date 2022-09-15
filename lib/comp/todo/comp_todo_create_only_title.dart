import 'package:flutter/material.dart';
import 'package:ray_plan/comp/base/functional_sateful_widget.dart';
import 'package:ray_plan/widget/message_card.dart';


class CompTodoCreateOnlyTitle extends FunctionalStatefulWidget<String> {
  CompTodoCreateOnlyTitle({super.key});

  @override
  State<CompTodoCreateOnlyTitle> createState() =>
      _CompTodoCreateOnlyTitleState();
}

class _CompTodoCreateOnlyTitleState extends State<CompTodoCreateOnlyTitle> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MessageCard(
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        const Text("new todo: "),
        SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: TextField(controller: controller)),
        OutlinedButton(
            onPressed: () => widget.completer.complete(controller.text),
            child: const Text('create'))
      ]),
    );
  }
}
