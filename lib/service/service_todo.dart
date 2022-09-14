import 'package:ray_plan/model/todo.dart';

import '../global.dart';

/// create a new todo or update a existed todo
Future<Todo> createOrUpdateTodo(Todo todo) async {
  await Global.isar.writeTxn(() async {
    todo.id = await Global.isar.todos.put(todo);
  });
  return todo;
}

/// a stream notify todo changed
Stream<void> notifyTodoChagned() {
  return Global.isar.todos.watchLazy();
}