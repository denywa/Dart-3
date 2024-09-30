import 'dart:io';

void main() {
  print('Enter temperature in Celsius:');
  double celsius = double.parse(stdin.readLineSync()!);

  print('Choose conversion:');
  print('1. Reaumur');
  print('2. Fahrenheit');
  print('3. Kelvin');
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      double reaumur = celsius * 0.8;
      print('$celsius Celsius is equal to $reaumur Reaumur');
      break;
    case 2:
      double fahrenheit = (celsius * 9/5) + 32;
      print('$celsius Celsius is equal to $fahrenheit Fahrenheit');
      break;
    case 3:
      double kelvin = celsius + 273.15;
      print('$celsius Celsius is equal to $kelvin Kelvin');
      break;
    default:
      print('Invalid choice');
  }
}
