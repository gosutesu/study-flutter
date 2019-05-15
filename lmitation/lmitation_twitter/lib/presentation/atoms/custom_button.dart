import 'package:flutter/material.dart';
import 'tweet_text.dart';

/// Tweetで使用するアイコンボタン
/// Icon count の順に並ぶ
class TweetActionButton extends StatelessWidget {

  // コンストラクタ
  TweetActionButton({
    @required this.icon,
    @required this.onPressed,
    this.count
  });
  
  // アイコン
  final IconData icon;
  // カウント数
  final int count;
  // ボタンアクション
  final VoidCallback onPressed;
  
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(0),
          child: IconButton(
            icon: Icon(icon),
            iconSize: 20.0,
            color: Colors.grey[600],
            padding: EdgeInsets.all(0),
            onPressed: onPressed,
          ),
        ),
        Container(
          margin: EdgeInsets.all(0),
          child: ThinText( count == null? "" : count.toString()),
        ),
      ],
    );
  }
  
}