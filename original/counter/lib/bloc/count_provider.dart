import 'package:flutter/material.dart';
import 'count_bloc.dart';

class CountProvider extends InheritedWidget {

  const CountProvider({Key key, Widget child}):super(key:key,child:child);

  CountBloc get bloc => CountBloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static CountProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CountProvider);
  }


}