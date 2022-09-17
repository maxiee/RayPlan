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
            Text(todo.title, style: const TextStyle(fontSize: 20)),
            Text(todo.description,
                style: const TextStyle(fontSize: 16, color: Colors.grey))
          ]),
    );
  }
}
