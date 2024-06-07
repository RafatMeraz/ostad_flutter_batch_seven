void main() {
  // data-type variable-name
  // class - Human
  // class-name instance-name = class-name()
  Human rahim = Human('Rafi', 34, 'Australia');
  rahim.eating('Mango');
  rahim.moving();
  rahim.talking('Tamim');

  Human karim = Human('Karim Mia', 32, 'Dhaka');
  print(karim.name);
  print(karim.address);

  Employee rafat = Employee('Rafat', 'Mirpur', 'Vivasoft', 30, 10000);
  rafat.goToOffice();
  rafat.moving();
}

class Human {
  // attributes
  late String name;
  late int age;
  late String address;

  // Default constructor
  // Human() {
  //
  // }

  Human(String userName, int userAge, String userAddress) {
    print('Creating a new Human');
    name = userName;
    age = userAge;
    address = userAddress;
  }

  void moving() {
    print('$name is moving');
  }

  void eating(String name) {
    print('${this.name} is eating $name');
  }

  void talking(String talkingWith) {
    print('$name is talking with $talkingWith');
  }
}

// child-name extends parent-class/base-class/super-class
class Employee extends Human {
  late String organization;
  late double salary;

  Employee(
    String employeeName,
    String employeeAddress,
    String employeeOrganization,
    int employeeAge,
    double employeeSalary,
  ) : super(employeeName, employeeAge, employeeAddress) {
    this.organization = employeeOrganization;
    this.salary = employeeSalary;
  }

  void goToOffice() {
    print('${super.name} Going to office');
  }

  //overriding

  @override
  void moving() {
    // super.moving();
    print('Moving with Mercedes');
  }
}
