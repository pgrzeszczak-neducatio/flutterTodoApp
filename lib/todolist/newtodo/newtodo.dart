import 'package:flutter/material.dart';
import '../../model/todo.dart';

class NewTodo extends StatefulWidget {
  @override
  _NewTodoState createState() => new _NewTodoState();
}

class _NewTodoState extends State<StatefulWidget> {
  final _newTodo = Todo(done: false);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(hintText: 'Please enter a search term'),
              onChanged: (value) {
                _newTodo.text = value;
              },
              onSubmitted: (value) => Navigator.pop(context, _newTodo),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    child: Text('Anuluj'),
                    color: Theme.of(context).accentColor,
                    onPressed: () => Navigator.pop(context),
                  ),
                  RaisedButton(
                    child: Text('OK'),
                    color: Theme.of(context).primaryColor,
                    onPressed: () => Navigator.pop(context, _newTodo),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
