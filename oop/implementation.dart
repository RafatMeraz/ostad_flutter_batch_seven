class Student {
  void goToSchool() {
    print('Go to school');
  }

  void studying() {
    print('Doing home work');
  }
}

abstract class Abc {
  void working();
}

class UniversityStudent implements Student, Abc {
  @override
  void goToSchool() {
    print('I go to university');
  }

  @override
  void studying() {
    print('I am doing assignment');
  }

  @override
  void working() {
    // TODO: implement working
  }
}

void main() {
  UniversityStudent kamal = UniversityStudent();
  kamal.studying();
}
