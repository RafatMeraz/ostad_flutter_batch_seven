// class name-of-class {}
//

class Monitor {
  static const String sample = 'sample-data';

  // attributes/properties
  final String abc = 'ABC';
  String companyName = '';
  String model = '';
  String _internalHardwareNo = '44545lksjdfksd';

  // Constructor
  Monitor(String companyName, String model) {
    this.companyName = companyName;
    this.model = model;
  }

  // methods
  void printModelName() {
    print(model);
  }

  int _calculatePixels() {
    return 4354534 *4534;
  }

  static String getSampleData() {
    return 'dummy';
  }
}