import 'package:ray_plan/model/todo.dart';

import '../global.dart';

/// create a new todo or update a existed todo
Future<int> createOrUpdateTodo(Todo todo) async {
  final id = Global.isar.todos.put(todo);
  return id;
}

/// a stream notify todo changed
Stream<void> notifyTodoChagned() {
  return Global.isar.todos.watchLazy();
}