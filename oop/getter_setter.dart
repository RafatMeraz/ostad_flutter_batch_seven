class Worker {
  String company = 'ABC';
  String designation = 'Software Engineer';
  double _salary = 30000;

  // double getSalary() {
  //   return _salary;
  // }
  //
  double get salary {
    return _salary;
  }

  String get getDesignation {
    return designation;
  }

  // void  setSalary(double newSalary) {
  //   if ((newSalary > _salary) && (newSalary < (_salary+5000))) {
  //     _salary = newSalary;
  //   }
  // }
  
  void set salary(double newSalary) {
    if ((newSalary > _salary) && (newSalary < (_salary+5000))) {
      _salary = newSalary;
    }
  }
}