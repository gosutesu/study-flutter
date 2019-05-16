import 'package:flutter/material.dart';
import 'component/pages/home.dart';
import 'business_logic/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TodoList',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => AppBlocProvider(child: HomePage()),
      },
    );
  }
}