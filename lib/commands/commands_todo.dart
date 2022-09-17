import 'dart:async';
import 'package:ray_plan/comp/common/comp_string_input.dart';
import 'package:ray_plan/comp/common/comp_todo_actions.dart';
import 'package:ray_plan/comp/todo/comp_todo_list.dart';
import 'package:ray_plan/model/todo.dart';
import 'package:ray_plan/service/service_im.dart';

import '../comp/todo/comp_todo_one_line.dart';
import '../global.dart';

/// command: create a todo
void create_a_todo() => empty_todo_context()
        .then(todo_input_title)
        .then(todo_input_description)
        .then(create_or_update_todo)
        .then((todo) {
      send_text_system_message("a new todo created: ");
      send_system_widget(CompTodoOneLine(todo: todo));
    });

/// command: get all todo items
void find_todo_all() => send_text_system_message_chain("all todo items:")
    .then((_) async => send_system_widget(const CompTodoListAll()));

/// show all action can be taken on a todo
void todo_actions(Todo todo) =>
    send_text_system_message_chain("on selected: ${todo.title}").then((_) =>
        send_system_widget_chain(CompActions(actions: [
          todo.finished ? 'mark as unfinished' : 'mark as finished',
          'edit',
          'delete'
        ])));

/// create a empty todo context
Future<Todo> empty_todo_context() async => Todo()
  ..title = ""
  ..description = ""
  ..finished = false
  ..created = DateTime.now()
  ..updated = DateTime.now();

Future<Todo> todo_context(Todo todo) async => todo;

/// interact input todo title
FutureOr<Todo> todo_input_title(Todo todo) async =>
    todo..title = await send_system_widget_chain(comp_todo_input_title(todo));

FutureOr<Todo> todo_input_description(Todo todo) async => todo
  ..description =
      await send_system_widget_chain(comp_todo_input_description(todo));

/// comp: input title
CompStringInput comp_todo_input_title(Todo todo) {
  return CompStringInput(title: 'Todo: ', defaultValue: todo.title);
}

/// comp: input description
CompStringInput comp_todo_input_description(Todo todo) {
  return CompStringInput(title: 'Descption: ', defaultValue: todo.description);
}

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
