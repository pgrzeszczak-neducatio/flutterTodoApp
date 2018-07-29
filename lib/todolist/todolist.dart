import 'package:flutter/material.dart';
import '../model/todo.dart';
import 'todo/todoelement.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final todos = <Todo>[
    Todo('Przykładowy todos'),
    Todo('Inny przykład'),
    Todo('To już zrobione'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return new TodoElement(todos[index]);
      },
    );
  }

//  <Widget>[
//  ListTile(
//  leading: Icon(Icons.map),
//  title: Text('Map'),
//  ),
//  ListTile(
//  leading: Icon(Icons.photo_album),
//  title: Text('Album'),
//  ),
//  ListTile(
//  leading: Icon(Icons.phone),
//  title: Text('Phone'),
//  ),
//  ],
}
