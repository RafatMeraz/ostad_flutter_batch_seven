// Reactive programming (RxDart, StreamController, Stream)
import 'dart:async';

Stream<int> returnNumbers() async* {
  for (int i=0; i<10; i++) {
    await Future.delayed(Duration(seconds: i));
    yield i;
  }
}

Future<void> main() async {
  await returnNumbers().listen((value) {
    print(value);
  });
}