import 'package:flutter/material.dart';
import '../molecules/custom_app_bar.dart';

/// ホーム画面のアプリケーションバーWidget
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  // ApplicationBarの高さを定義
  // widthは横幅一杯
  @override
  final Size preferredSize = Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        title: Text('ホーム'),
        action: IconButton(
            icon: Icon(
              Icons.star,
              color: Colors.blue,
            ),
            onPressed: (){}
            ),
    );
  }
}

class MailListAppBar extends StatelessWidget implements PreferredSizeWidget {

  // ApplicationBarの高さを定義
  // widthは横幅一杯
  @override
  final Size preferredSize = Size.fromHeight(90.0);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        title: Text('メッセージ'),
        action: IconButton(
            icon: Icon(
              Icons.star,
              color: Colors.blue,
            ),
            onPressed: () {}
        ),
        flexibleSpace: FlexibleSpaceBar(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    bottomLeft: Radius.circular(50.0),
                  ),
                  child: Container(
                    child: Text("受信トレイ"),
                    height: 25,
                    width: 150,
                    color: Colors.blue[500],
                  )
                ),
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    ),
                    child: Container(
                      child: Text("リクエスト"),
                      height: 25,
                      width: 150,
                      color: Colors.grey[800],
                    )
                ),
              ],
            )
        )
    );
  }
}