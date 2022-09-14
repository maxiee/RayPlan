import 'package:flutter/material.dart';
import 'package:ray_plan/comp/todo/comp_todo_create_only_title.dart';
import 'package:ray_plan/comp/todo/comp_todo_list.dart';
import 'package:ray_plan/widget/message_text.dart';
import 'package:tuple/tuple.dart';

import '../global.dart';

typedef WidgetCreator = Widget Function();

final menu = <String, List<Tuple2<String, WidgetCreator>>>{
  "Todo": [
    Tuple2("create a todo", () => const CompTodoCreateOnlyTitle()),
    Tuple2("todo list all", () => const CompTodoListAll())
  ]
};

class CompInput extends StatefulWidget {
  const CompInput({super.key});

  @override
  State<CompInput> createState() => _CompInputState();
}

class _CompInputState extends State<CompInput> {
  var categories = <String>[];
  late String currentSelected;

  @override
  void initState() {
    super.initState();
    for (final m in menu.keys) {
      categories.add(m);
    }
    currentSelected = menu.keys.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Divider(),
        Container(
          height: 50,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: categories
                  .map((c) => TextButton(onPressed: () {}, child: Text(c)))
                  .toList()),
        ),
        Divider(),
        Container(
            height: 100,
            child: SingleChildScrollView(
                child: Wrap(
                    children: menu[currentSelected]
                            ?.map((m) => OutlinedButton(
                                onPressed: () {
                                  Global.serviceMessages.sendUserMessage(MessageText(text: m.item1));
                                  Global.serviceMessages
                                    .sendSystemMessage(m.item2());
                                },
                                child: Text(m.item1)))
                            .toList() ??
                        [])))
      ]),
    );
  }
}
