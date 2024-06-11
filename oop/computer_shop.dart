import 'apple_laptop.dart';
import 'computer.dart';
import 'hp_laptop.dart';

// reformat :
// Windows : ctl + alt + l
// Mac : cmd + option + l

void main() {
  HpLaptop eliteBook = HpLaptop(
    model: 'Elite book 343HKL',
    processor: 'Intel Core i5',
    year: '2023',
    macAddress: 'asuo495494234354',
  );

  eliteBook.startComputer();
  eliteBook.runHPGraphicsSoftware();
  eliteBook.stopComputer();

  // Polymorphism
  Computer computer = HpLaptop(
      model: 'skdfdlf',
      processor: 'dsfd',
      ramInGB: 4,
      year: '2021',
      macAddress: 'sdfasdfasfuo403934');
  computer.stopComputer();

  AppleLaptop macbookAir =
      AppleLaptop('Macbook air', 'M1', 16, '2021', 'TAFASDF3434jkasdfksjf');
  macbookAir.startComputer();
  print(macbookAir.getOSVersion());
}
