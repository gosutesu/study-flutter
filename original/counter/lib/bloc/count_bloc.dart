import 'dart:async';

class CountBloc {

  /// 状態を示す値
  int _count = 0;

  /// 更新状態を子Widgetに伝搬させるためにStreamを使用
  StreamController<int> _counter = StreamController<int>();

  Stream<int> get counter => _counter.stream;

  CountBloc() {
    _counter.sink.add(_count);
  }

  void add() {
    _counter.sink.add(++_count);
  }


  void dispose() {
    _counter.close();
  }
}