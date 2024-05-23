main() {
  double value = 45.5;
  int a = value.toInt();
  String x = a.toString();
  print(a);
  value = a.toDouble();
  print(x.runtimeType);
  print(value);
  x = value.toString();
  String numValue = '34';
  int id = int.parse(numValue);
  print(id.runtimeType);
  String gpa = '3.50';
  double g = double.parse(gpa);
  print(g);
}