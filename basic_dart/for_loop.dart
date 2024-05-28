void main() {
  // loop
  // for, while, do-while
  // for-loop
  // start : condition : increment/decrement

  // Initialization : Condition : Increment/Decrement
  for (int i=0; i <= 10; i = i+1) {
    if (i == 5) {
      continue;
    }
    if (i == 88) {
      break;
    }
    print(i);
    greeting();
  }

  int h = 1;
  while (h <= 5) {
    print(h);
    h++;
  }

  List<String> students = [
    'Arifen',
    'Shuvo',
    'Shoyeb',
    'Hasan',
    'Rakib'
  ];

  for (int i=0; i < students.length; i++) {
    print('Student $i : ${students[i]}');
  }

  // For in
  for (String student in students) {
    print('Student name : $student');
  }

  students.forEach((stu) {
    print(stu);
  });

  Map<String, Map<String, String>> friends = {
    'iram' : {
      'address' : 'Barishal' ,
      'age' : '30',
    },
    'shabbin' : {
      'address' : 'Dhaka' ,
      'age' : '31',
    },
    'maruf' : {
      'address' : 'Dhaka' ,
      'age' : '31',
    },
  };

  for (String key in friends.keys) {
    print(
        'My friend name is $key. Address: ${friends[key]!['address']} Age: ${friends[key]!['age']}');
  }

  for (Map<String, String> details in friends.values) {
    print(details);
  }
}

void greeting() {
  print('Welcome to home');
  print('Do you wanna take some tea/coffee?');
  print('Good bye');
}