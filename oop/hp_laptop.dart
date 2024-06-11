import 'computer.dart';

class HpLaptop extends Computer {
  HpLaptop(
      {required String model,
      required String processor,
      int ramInGB = 8,
      required String year,
      required String macAddress})
      : super('HP', model, processor, ramInGB, year, macAddress);
// HpLaptop(
//   super.companyName,
//   super.model,
//   super.processor,
//   super.ramInGB,
//   super.year,
//   super.macAddress,
// );

  void runHPGraphicsSoftware() {
    print('Running hp graphics');
  }
}
