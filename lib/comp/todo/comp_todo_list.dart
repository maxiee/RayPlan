import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
import 'package:ray_plan/model/todo.dart';
import 'package:ray_plan/widget/message_card.dart';
import 'package:ray_plan/widget/message_list.dart';

import '../../global.dart';

class CompTodoListAll extends StatelessWidget {
  const CompTodoListAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.height / 3,
      child: MessageList<Todo>(
      itemBuilder: (context, item, index) => Text(item.title),
      fetchPage: ((pageKey) async => Global.isar.todos
          .where()
          .offset(pageKey)
          .limit(10)
          .findAll()),
      pageSize: 10),
    );
  }
}
