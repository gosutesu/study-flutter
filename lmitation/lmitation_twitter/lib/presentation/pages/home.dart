///
/// Home pages に関するプレゼンテーション層に関する処理をまとめるクラス
///
import 'package:flutter/material.dart';
import '../organisms/app_bar.dart';
import '../organisms/tweet_list.dart';
import '../molecules/custom_bottom_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          TweetList(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar()
    );
  }
}

/// Home page クラス
/// Home pageを表現するクラス
class _Home extends StatefulWidget {
  @override
  State createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}