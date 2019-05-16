import 'package:flutter/material.dart';
import '../atoms/todo_atoms.dart';

class Todo extends StatelessWidget {

  Todo({
    @required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TodoDivider(),
        Container(
          padding: EdgeInsets.all(5.0),
          child: TodoText(text:text),
        ),
        TodoDivider(),
      ],
    );
  }
}