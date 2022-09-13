import 'package:ray_plan/model/todo.dart';

import '../global.dart';

/// create a new todo or update a existed todo
Future<Todo> createOrUpdateTodo(Todo todo) async {
  await Global.isar.writeTxn((isar) async {
    final id = await isar.todos.put(todo);
    todo.id = id;
  });
  return todo;
}

/// a stream notify todo changed
Stream<void> notifyTodoChagned() {
  return Global.isar.todos.watchLazy();
}