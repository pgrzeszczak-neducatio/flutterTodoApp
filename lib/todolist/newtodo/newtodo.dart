import 'package:flutter/material.dart';
import '../../model/todo.dart';

class NewTodo extends StatefulWidget {
  @override
  _NewTodoState createState() => new _NewTodoState();
}

class _NewTodoState extends State<StatefulWidget> {
  final newTodo = Todo();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(32.0),
        child: Text('IT WORKS'),
      ),
    );
  }
}