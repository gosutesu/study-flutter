import 'package:flutter/material.dart';
import '../organisms/todo_organisms.dart';
import '../../business_logic/vo/todo_vo.dart';

class TodoList extends StatelessWidget {

  TodoList(this.todoList);

  final List<String> todoList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoList.length,
        itemBuilder: (context,index) => _itemBuilder(context, index)
    );
  }

  Todo _itemBuilder(BuildContext context, int index) {

    if(todoList.length == 0) {
      return null;
    }

    return Todo(
      text: todoList[index],
    );
  }
}