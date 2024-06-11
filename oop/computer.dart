abstract class Computer {
  String companyName;
  String model;
  String year;
  String processor;
  int ramInGB;
  final String macAddress;

  Computer(
    this.companyName,
    this.model,
    this.processor,
    this.ramInGB,
    this.year,
    this.macAddress,
  );

  String getDetails() {
    return 'Company name: $companyName\nModel: $model';
  }

  void startComputer() {
    _startHardwareComponents();
    _startInternalProcess();
  }

  void _startInternalProcess() {}

  void _startHardwareComponents() {}

  void stopComputer() {
    _stopInternalProcess();
    _stopHardwareComponents();
  }

  void _stopInternalProcess() {}

  void _stopHardwareComponents() {}
}

// Abstraction can be achieved by encapsulation
