import 'package:flutter/material.dart';

/// 標準サイズの文字クラス
class NormalText extends StatelessWidget {

  NormalText(this.text);

  // テキスト
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    );
  }
}

/// 太字サイズの文字グラス
class BoldText extends StatelessWidget {

  BoldText(this.text);

  // テキスト
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/// 細字サイズの文字グラス
class ThinText extends StatelessWidget {

  ThinText(this.text);

  // テキスト
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w100,
      ),
    );
  }
}