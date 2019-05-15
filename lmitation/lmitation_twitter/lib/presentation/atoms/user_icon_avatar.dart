///
/// ユーザアイコンのatomを管理するクラス群
/// atomはstatelessで作成する。
///
import 'package:flutter/material.dart';

/// ユーザアイコンを表示する基底クラス
class UserIconAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Text('A'),
      backgroundColor: Colors.grey[800],
    );
  }
}

/// アプリケーションバー用ユーザアイコンクラス
class AppBarUserIconAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 50.0,
      width: 50.0,
      child: UserIconAvatar(),
    );
  }
}

/// Tweet用のユーザアイコンクラス
class TweetUserIconAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 45.0,
      child: UserIconAvatar(),
    );
  }
}
