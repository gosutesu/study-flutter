import 'package:flutter/material.dart';
import '../molecules/tweet.dart';

class TweetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
          Tweet(
            username: 'user3',
            account: 'acount',
            tweetTime: '5時間前',
            tweet: 'テスト',
            commentCount: 1,
            reTweetCount: 1,
            favoriteCount: 1,
          ),
        ],
      ),
    );
  }
}