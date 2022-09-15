import 'dart:async';
import 'package:ray_plan/comp/todo/comp_todo_create_only_title.dart';
import 'package:ray_plan/model/todo.dart';
import 'package:ray_plan/service/service_im.dart';

import '../global.dart';

// command:
void create_a_todo() => send_system_message(CompTodoCreateOnlyTitle())
    .then(title_to_todo)
    .then(create_or_update_todo)
    .then((todo) =>
        send_text_system_message("a new todo created: ${todo.toString()}"));

FutureOr<Todo> title_to_todo(String title) async => Todo()
  ..title = title
  ..finished = false
  ..description = ""
  ..created = DateTime.now()
  ..updated = DateTime.now();

/// create a new todo or update a existed todo
FutureOr<Todo> create_or_update_todo(Todo todo) async {
  await Global.isar.writeTxn(() async {
    todo.id = await Global.isar.todos.put(todo);
  });
  return todo;
}

/// a stream notify todo changed
Stream<void> notifyTodoChagned() {
  return Global.isar.todos.watchLazy();
}
