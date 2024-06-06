class Person {
  String name = '';
  String address = '';
  int age = 0;

  // Person({required this.name, required this.address, required this.age});

  // Person({required String name, required String address, required int age}) {
  //   this.name = name;
  //   this.age = age;
  //   this.address = address;
  // }

  Person(String name, String address, int age) {
    this.name = name;
    this.age = age;
    this.address = address;
  }

  void printName() {
    print(name);
  }
}
