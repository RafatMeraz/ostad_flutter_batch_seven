num sum<T extends num>(T a, T b) {
  return a + b;
}

String doSomething<T, V>(T a, V b) {
  return '$a $b';
}

void printSomething<T>(T something) {
  print(something);
}

void main() {
  print(doSomething<String, int>('key', 34));
  print(sum<int>(3434, 34645));
  // printSomething('dafsdf');
  // printSomething<int>(3434);
  // printSomething<bool>(false);
  // printSomething(true);
}