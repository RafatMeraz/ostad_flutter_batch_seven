main() {
  int age = 27;
  // jodi karo age 21 er beshi hoi, then he is "man"
  //  if (condition) {
  //    body
  //  }
  if (age >= 21) {
    print('man');
  } else if (age >= 11) {
    print('Boy');
  } else {
    print('Baby boy');
  }
  String userName = 'Shamim';

  if (userName == 'Sunny' && age > 20) {
    print('Username is $userName');
  }

  if (userName == 'Shamim' || userName == 'Sunny') {
    print('welcome home');
  }
}