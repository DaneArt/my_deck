import 'package:stack/stack.dart';

extension StackExtension<T> on Stack<T> {
  Future<List<T>> toListAsync() {
    final List<T> result = [];
    while (this.isNotEmpty) {
      result.add(this.top());
      this.pop();
    }
    return Future.value(result.reversed.toList());
  }

  List<T> toListSync() {
    final List<T> result = [];
    while (this.isNotEmpty) {
      result.add(this.top());
      this.pop();
    }
    return result.reversed.toList();
  }
}

extension ListExtension<T> on List<T> {
  Stack<T> toStack() {
    final Stack<T> result = Stack();

    for (T e in this.reversed) {
      result.push(e);
    }
    return result;
  }
}
