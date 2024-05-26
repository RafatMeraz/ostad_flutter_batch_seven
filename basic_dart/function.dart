void main() {
  // Argument/s
  welcomeMessage('Alamin', 'Tangail', age: 63);
  welcomeMessage('Fahim', 'Dhaka');
  welcomeMessage('Iram', 'Barishal', age: 23);
  welcomeMessage('Shabbin', 'Dhaka');
  welcomeMessage('Kowshik', 'Dhaka');

  int r = add(firstNo: 36, secondNo: 87);
  int s = add(secondNo: 345, firstNo: 12);
  print(r);
  print(s);
}

// return-type func-name(params) {}
// Parameters
void welcomeMessage(String name, String address, {int age = 0}) {
  print('Welcome to team, $name');
  print('Take your laptop');
  print('Take your Id');
  print('Take your test-device');
  print('Fill your data form');
}

int add({required int firstNo, required int secondNo}) {
  int result = firstNo + secondNo;
  return result;
}