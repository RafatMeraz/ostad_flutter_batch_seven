main() {
  int age = 30;
  String a = 'assdf';
  String b = 'assdf';
  String c = a + b;
  String greeter = 'Mony';
  String message = 'My age is $age $c ' + c;
  print(message);
  String result = 'Addition result is ${45 + 34 + 343 + 6767}';
  print(result);
  print('Hello world from $greeter');
}