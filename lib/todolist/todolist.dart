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
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return Dismissible(
            key: Key(todo.id),
            direction: DismissDirection.startToEnd,
            background: Container(
                color: Colors.red,
                child: ListTile(
                  leading: Icon(Icons.delete_outline),
                )),
            onDismissed: (direction) {
              setState(() {
                todos.removeAt(index);
              });
              Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Usunięto tudus: ${todo.text}'),
                    action: SnackBarAction(
                      label: 'Cofnij',
                      onPressed: () {
                        setState(() {
                          todos.insert(index, todo);
                        });
                      },
                    ),
                  ));
            },
            child: TodoElement(todo: todo),
          );
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
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text('Dodano nowy tudus: ${result.text}')));
            }
          },
        ),
      ),
    ]);
  }
}
