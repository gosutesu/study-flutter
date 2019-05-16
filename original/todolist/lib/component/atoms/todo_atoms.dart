import 'package:flutter/material.dart';

class TodoText extends StatelessWidget {

  TodoText({
    @required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontSize: 14.0,
      ),
    );
  }
}

class TodoDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.blue[900],
    );
  }
}