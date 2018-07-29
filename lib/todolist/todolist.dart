import 'package:flutter/material.dart';
import '../model/todo.dart';
import 'todo/todoelement.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final todos = <Todo>[
    Todo(text: 'Przykładowy todos'),
    Todo(text: 'Inny przykład'),
    Todo(text: 'To już zrobione'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return new TodoElement(todo: todos[index]);
      },
    );
  }
}
