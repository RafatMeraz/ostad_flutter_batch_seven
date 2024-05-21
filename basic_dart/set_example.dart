main() {
  Set<String> studentList = {};
  studentList.add('Rakib');
  studentList.add('Sakib');
  studentList.add('Tamim');
  studentList.add('Noor');
  studentList.add('Noor');
  studentList.add('Habib');
  studentList.add('Noor');
  studentList.add('Rakib');
  print(studentList);

  studentList.addAll({'Rafat', 'Tamim'});
  print(studentList);

  studentList.remove('Rafat');
  print(studentList);

  studentList.removeAll(['Tamim', 'Noor']);
  print(studentList);

  print(studentList.elementAt(2));
  print(studentList.elementAt(2));
  print(studentList.length);
  print(studentList.isEmpty);
  print(studentList.isNotEmpty);
  studentList.clear();
  print(studentList);
}