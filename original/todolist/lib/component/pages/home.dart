import 'package:flutter/material.dart';
import '../templates/home_template.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return HomeTemplate();
  }

}