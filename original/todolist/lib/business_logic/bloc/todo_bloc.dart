import 'dart:async';
import '../vo/todo_vo.dart';

class TodoBloc {


  final StreamController<String> _todoList = StreamController<String>();

  void add(String vo) {
    _todoList.sink.add(vo);
  }

  List<String> list() {
    List<String> list = [];
    _todoList.stream.forEach((value) => list.add(value));
    return list;
  }

  void dispose() {
    _todoList.close();
  }

}