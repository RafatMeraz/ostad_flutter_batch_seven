void main() {
  int day = 9;

/*  if (day == 1) {
    print('Saturday');
  } else if (day == 2) {
    print('Sunday');
  } else if (day == 3) {
    print('Monday');
  } else if (day == 4) {
    print('Tuesday');
  } else if (day == 5) {
    print('Wednesday');
  } else if (day == 6) {
    print('Thursday');
  } else if (day == 7) {
    print('Friday');
  } else {
    print('Invalid day');
  }*/

  switch (day) {
    case 1:
      print('Saturday');
    case 2:
      print('Sunday');
    case 3:
      print('Monday');
    case 4:
      print('Tuesday');
    case 5:
      print('Wednesday');
    case 6:
      print('Thursday');
    case 7:
    case 8:
      print('Friday');
    default:
      print('Invalid day');
  }
}