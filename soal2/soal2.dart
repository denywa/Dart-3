import 'dart:io';
import 'class2.dart';

void main() {
  print('Choose account type:');
  print('1. Bank Account');
  print('2. Savings Account');
  var accountChoice = stdin.readLineSync();

  if (accountChoice == '1') {
    var acc = BankAccount(0);
    while (true) {
      print('Choose an option:');
      print('1. Check Balance');
      print('2. Deposit');
      print('3. Withdraw');
      print('4. Exit');
      var choice = stdin.readLineSync();

      if (choice == '1') {
        acc.checkBalance();
      } else if (choice == '2') {
        print('Enter deposit amount:');
        var depositAmount = double.parse(stdin.readLineSync()!);
        acc.deposit(depositAmount);
      } else if (choice == '3') {
        print('Enter withdraw amount:');
        var withdrawAmount = double.parse(stdin.readLineSync()!);
        acc.withdraw(withdrawAmount);
      } else if (choice == '4') {
        break;
      } else {
        print('Invalid choice. Please try again.');
      }
      print('');
    }
  } else if (accountChoice == '2') {
    var acc = SavingsAccount(0);
    while (true) {
      print('Choose an option:');
      print('1. Check Balance');
      print('2. Deposit');
      print('3. Withdraw');
      print('4. Apply Interest');
      print('5. Exit');
      var choice = stdin.readLineSync();

      if (choice == '1') {
        acc.checkBalance();
      } else if (choice == '2') {
        print('Enter deposit amount:');
        var depositAmount = double.parse(stdin.readLineSync()!);
        acc.deposit(depositAmount);
      } else if (choice == '3') {
        print('Enter withdraw amount:');
        var withdrawAmount = double.parse(stdin.readLineSync()!);
        acc.withdraw(withdrawAmount);
      } else if (choice == '4') {
        acc.applyInterest();
      } else if (choice == '5') {
        break;
      } else {
        print('Invalid choice. Please try again.');
      }
      print('');
    }
  } else {
    print('Invalid account type. Please restart the program.');
  }
}
