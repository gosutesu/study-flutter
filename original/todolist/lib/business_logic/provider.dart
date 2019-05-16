import 'package:flutter/material.dart';
import 'bloc/todo_bloc.dart';

class AppBlocProvider extends InheritedWidget {

  const AppBlocProvider({Key key,Widget child}):super(key:key,child:child);

  TodoBloc get todoBloc => TodoBloc();

  @override
  bool updateShouldNotify(_) => true;

  static AppBlocProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppBlocProvider);
  }

}