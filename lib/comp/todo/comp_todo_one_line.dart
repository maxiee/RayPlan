import 'package:flutter/material.dart';

import '../../model/todo.dart';

class CompTodoOneLine extends StatelessWidget {
  const CompTodoOneLine({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(todo.title,
                style: TextStyle(
                    color: todo.finished ? Colors.green : Colors.black)),
            Text(todo.description, style: const TextStyle(color: Colors.grey))
          ]),
    );
  }
}
