import 'package:flutter/material.dart';
import '../molecules/todo_list_molecules.dart';
import '../../business_logic/provider.dart';
import '../../business_logic/bloc/todo_bloc.dart';
import '../../business_logic/vo/todo_vo.dart';

class HomeTemplate extends StatefulWidget {
  @override
  State createState() => HomeTemplateState();
}


class HomeTemplateState extends State<HomeTemplate> {

  @override
  Widget build(BuildContext context) {
    final TodoBloc bloc = AppBlocProvider.of(context).todoBloc;
    List<String> list;
    bloc.list().listen((onData) => list = onData);
    return new Scaffold(
      appBar: AppBar(title: Text("Todo List"),),
      body: TodoList(list),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          bloc.add("AA");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}