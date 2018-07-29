import 'package:uuid/uuid.dart';

final uuid = new Uuid();

class Todo {
  String text;
  bool done;
  String id;

  Todo({this.text, this.done = false}) {
    id = uuid.v4();
  }
}