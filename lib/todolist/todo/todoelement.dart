import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../../model/todo.dart';

class TodoElement extends StatefulWidget {
  final Todo todo;

  TodoElement({@required this.todo});

  @override
  _TodoElementState createState() => new _TodoElementState();
}

class _TodoElementState extends State<TodoElement> {
  onDoneChange(value) {
    setState(() {
      widget.todo.done = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        title: Text(
          widget.todo.text,
          style: widget.todo.done ? TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey) : null,
        ),
        trailing: Checkbox(value: widget.todo.done, onChanged: onDoneChange),
      ),
      Divider(),
    ]);
  }
}
