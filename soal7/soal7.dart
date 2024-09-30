import 'dart:io';
import 'class7.dart';

void main() {
  print('Do you want to create a Car or Bike? (car/bike)');
  String? choice = stdin.readLineSync();

  if (choice != null) {
    print('Enter the speed:');
    double? speed = double.tryParse(stdin.readLineSync()!);

    if (speed != null) {
      if (choice.toLowerCase() == 'car') {
        Car car = Car('Car', speed);
        car.move();
      } else if (choice.toLowerCase() == 'bike') {
        Bike bike = Bike('Bike', speed);
        bike.move();
      } else {
        print('Invalid choice.');
      }
    } else {
      print('Invalid speed input.');
    }
  } else {
    print('No input received.');
  }
}
