import 'package:flutter/material.dart';
import '../../model/todo.dart';

class TodoElement extends StatelessWidget {
  final Todo todo;
  TodoElement(this.todo);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(title: Text(todo.text)),
      Divider(),
    ]);
  }
}