import 'class_object.dart';
import 'getter_setter.dart';
import 'person.dart';

void main() {
  // instance/object : className object-name = className()
  // Monitor myMonitor = Monitor('LG', 'MK600 shjdfjsdf ');
  // print(myMonitor.companyName);
  // print(myMonitor.model);
  //
  // Monitor rafisMonitor = Monitor('Samsung', 'TF22');
  // // print(rafisMonitor.model);
  // rafisMonitor.printModelName();
  // rafisMonitor.companyName = 'MSI';
  // print(rafisMonitor.companyName);
  //
  // print(Monitor.sample);
  // print(Monitor.getSampleData());

  // Person tamim = Person('Tamim', 'Dhaka', 34);
  // tamim.printName();
  Worker rifat = Worker();
  rifat.company;
  rifat.designation;
  print(rifat.salary);

  // setter method with keyword
  rifat.salary = 33000;
  print(rifat.salary);
}