// Synchronous
void doSomething() {
  print('A');
  print('B');
  print('C');
  print('D');
  print('E');
}

void anotherMethod() {
  print('New A');
  Future.delayed(Duration(seconds: 10)).then((_) {
    print('New B');
  });
  print('New C');
}

Future<int> sum(int a, int b) async {
  await Future.delayed(Duration(seconds: 10));
  return a+b;
}

Future<void> main() async {
  // anotherMethod();
  // doSomething();
  int result = await sum(12, 23);
  print(result);
}

// Asynchronous
// Future result/error