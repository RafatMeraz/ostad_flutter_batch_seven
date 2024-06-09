// When we don't want to make a direct instance
abstract class Animal {
  late String name;

  Animal(String animalName) {
    this.name = animalName;
  }

  void eating(); // abstract method

  void moving() {
    print('Animal is moving');
  }
}

class Lion extends Animal {
  Lion(String lionName) : super(lionName);

  @override
  void eating() {
    print('Lion is hunting and eating');
  }
}

// ChildClass extends ParentClass/SuperClass/BaseClass
class Dog extends Animal {
  Dog(String dogName) : super(dogName);

  void barking() {
    print('$name is barking');
  }

  @override
  void eating() {
    print('Dog is eating');
    print('Dog is eating and moving');
  }
}

void main() {
  Dog mailo = Dog('Mailo');
  mailo.eating();

  Lion mufasa = Lion('Mufasa the lion king');
  mufasa.eating();

}