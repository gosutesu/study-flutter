import 'package:flutter/material.dart';
import '../atoms/user_icon_avatar.dart';
import '../atoms/tweet_text.dart';
import '../atoms/custom_button.dart';

/// Tweet Widget
/// ツイート部分を表示する部分
class Tweet extends StatelessWidget {
  Tweet({
    this.username,
    this.account,
    this.tweetTime,
    this.tweet,
    this.commentCount,
    this.reTweetCount,
    this.favoriteCount
  });

  // 利用者名
  final String username;
  // アカウント名
  final String account;
  // ツイート時間
  final String tweetTime;
  // ツイート内容
  final String tweet;
  // コメント数
  final int commentCount;
  // リツート数
  final int reTweetCount;
  // お気に入り数
  final int favoriteCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(height: 0.0,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // 1列目
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(top: 5.0),
                child : Center(
                  // ユーザーアイコン部分
                  child: TweetUserIconAvatar(),
                ),
              ),
            ),
            // 2列目
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Tweet上段部分
                  TweetUserInfoBar(
                    username: username,
                    account: account,
                    time: tweetTime,
                  ),
                  // Tweet内容
                  Container(
                    child: NormalText(tweet),
                  ),
                  // Tweet Bottom Menu
                  TweetBottomMenu(
                    commentCount: commentCount,
                    reTweetCount: reTweetCount,
                    favoriteCount: favoriteCount,
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(height: 0.0,),
      ],
    );
  }
}

/// Tweet部分の上段の利用者情報部分
class TweetUserInfoBar extends StatelessWidget {

  // コンストラクタ
  TweetUserInfoBar({
    this.username = 'username',
    this.account = 'account',
    this.time = '5時間'
  });

  // 利用者名
  final String username;
  // アカウント名
  final String account;
  // Tweet時間
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // username@account･time
        Expanded(
          flex: 9,
          child: Row(
            children: <Widget>[
              BoldText('$username'),
              ThinText('@$account'),
              ThinText('･$time'),
            ],
          ),
        ),
        // Drawer表示ボタン
        Expanded(
          flex: 1,
          child: Container(
            height: 15.0,
            width: 15.0,
            child: IconButton(
              iconSize: 15.0,
              icon: Icon(
                Icons.expand_more,
              ),
              padding: EdgeInsets.all(4.0),
              alignment: Alignment.topCenter,
              onPressed: (){}
            ),
          ),
        ),
      ],
    );
  }
}

/// Tweet 下部のメニュー部分
class TweetBottomMenu extends StatelessWidget {

  // コンストラクタ
  TweetBottomMenu({
    this.commentCount,
    this.reTweetCount,
    this.favoriteCount,
  });

  // コメント数
  final int commentCount;
  // リツイート数
  final int reTweetCount;
  // お気に入り数
  final int favoriteCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 20.0),
          child: TweetActionButton(icon: Icons.chat_bubble_outline, onPressed: (){}, count: commentCount,),
        ),
        Container(
          margin: EdgeInsets.only(right: 20.0),
          child: TweetActionButton(icon: Icons.cached, onPressed: (){},count: reTweetCount,),
        ),
        Container(
          margin: EdgeInsets.only(right: 20.0),
          child: TweetActionButton(icon: Icons.favorite, onPressed: (){}, count: favoriteCount,),
        ),
        Container(
          margin: EdgeInsets.only(right: 20.0),
          child: TweetActionButton(icon: Icons.file_upload, onPressed: (){}),
        ),
      ],
    );
  }
}