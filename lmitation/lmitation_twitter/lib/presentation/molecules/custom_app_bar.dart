import 'package:flutter/material.dart';
import '../atoms/user_icon_avatar.dart';

class CustomAppBar extends StatelessWidget {

  ///
  /// コンストラクタ
  ///
  CustomAppBar({
    @required this.title,
    @required this.action,
    this.flexibleSpace,
  });

  /// タイトル
  final Widget title;
  /// アクション
  final Widget action;
  /// フレキシブルスペース
  final Widget flexibleSpace;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade50,
      title: Center(
        child: title,
      ),
      leading: AppBarUserIconAvatar(),
      actions: <Widget>[
        action
      ],
      flexibleSpace: flexibleSpace,
    );
  }
}