enum Division {
  Dhaka,
  Tangail,
  Gazipur,
  Chandra,
  None
}

void main() {
  String d = 'dafdasjkfjd';
  Division myDivision = Division.Gazipur;

  print(Division.values);

  print(Division.Dhaka == parseEnumFromString('dhaka'));
  print(Division.Dhaka.name == 'Dhaka');
  print(Division.Dhaka.name);
  print(Division.None.index);
}

Division parseEnumFromString(String value) {
  if (value.toLowerCase() == 'dhaka') {
    return Division.Dhaka;
  }
  return Division.None;
}