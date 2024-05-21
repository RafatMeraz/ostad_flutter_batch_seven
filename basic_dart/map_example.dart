main() {
  // Mapping => latlng -> address
  // key (unique) : value(not unique)

  Map<int, String> studentList = {
    40 : 'Tanmoy',
    1 : 'Hasan',
    2 : 'Rakib',
    3 : 'Jakir',
    4 : 'Rakib',
    1 : 'Rafat',
    1 : 'You'
  };
  print(studentList);
  print(studentList[40]);
  studentList[3] = 'random';
  print(studentList);

  print(studentList.length);
  print(studentList.isEmpty);
  print(studentList.isNotEmpty);
  print(studentList.containsKey(1));
  print(studentList.containsKey(34));
  print(studentList.containsValue('Rakib'));

  studentList[70] = 'Rafat';

  studentList.remove(5656);
  print(studentList);

  studentList.addAll({
    32 : 'Shamim',
    90 : 'Imran',
  });

  print(studentList.keys);
  print(studentList.values);
  print(studentList);

  studentList.clear();
  print(studentList);
}