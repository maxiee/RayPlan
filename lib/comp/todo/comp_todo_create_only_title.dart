import 'package:flutter/material.dart';
import 'package:ray_plan/model/todo.dart';
import 'package:ray_plan/service/service_todo.dart';

import '../../global.dart';

class CompTodoCreateOnlyTitle extends StatefulWidget {
  const CompTodoCreateOnlyTitle({super.key});

  @override
  State<CompTodoCreateOnlyTitle> createState() =>
      _CompTodoCreateOnlyTitleState();
}

class _CompTodoCreateOnlyTitleState extends State<CompTodoCreateOnlyTitle> {
  TextEditingController controller = TextEditingController();

  onCreate() {
    createOrUpdateTodo(Todo()
          ..title = controller.text
          ..finished = false
          ..description = ""
          ..created = DateTime.now()
          ..updated = DateTime.now())
        .then((value) => Global.serviceMessages.sendSystemMessage(
            Text("a new todo created: ${value.toString()}")));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              color: Color(0xFFDEDEDE),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            const Text("new todo: "),
            SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: TextField(controller: controller)),
            OutlinedButton(onPressed: onCreate, child: const Text('create'))
          ]),
        )
      ],
    );
  }
}
