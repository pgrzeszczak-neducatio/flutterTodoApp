import 'package:flutter/material.dart';
import '../model/todo.dart';
import 'todo/todoelement.dart';
import 'newtodo/newtodo.dart';

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
    return Stack(alignment: const Alignment(1.0, 1.0), children: [
      ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return new TodoElement(todo: todos[index]);
        },
      ),
      Container(
        padding: const EdgeInsets.all(24.0),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () async {
            var result = await showDialog(
                context: context,
                builder: (context) {
                  return NewTodo();
                });
            if (result != null) {
              setState(() {
                todos.add(result);
              });
              Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Dodano nowy tudus: ${result.text}'),
                  ));
            }
          },
        ),
      ),
    ]);
  }
}
