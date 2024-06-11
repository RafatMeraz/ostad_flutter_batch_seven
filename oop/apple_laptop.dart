import 'computer.dart';

class AppleLaptop extends Computer {
  AppleLaptop(String model, String processor, int ramInGB, String year,
      String macAddress)
      : super(
          'Apple',
          model,
          processor,
          ramInGB,
          year,
          macAddress,
        );

  String getOSVersion() {
    return 'Sonoma';
  }
}
