import 'package:flutter/material.dart';
import 'presentation/pages/home.dart';
import 'presentation/pages/mail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lmitation Twitter',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => Home(),
        '/mail' :(context) => Mail(),
      },
    );
  }
}
