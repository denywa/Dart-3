import 'dart:io';
import 'class3.dart';

void main() {
  print('Enter initial balance:');
  double initialBalance = double.parse(stdin.readLineSync()!);
  ATM myATM = ATM(initialBalance);

  while (true) {
    print('Choose an option:');
    print('1. Check Balance');
    print('2. Set Balance');
    print('3. Deposit');
    print('4. Withdraw');
    print('5. Exit');
    var choice = stdin.readLineSync();

    if (choice == '1') {
      myATM.checkBalance();
    } else if (choice == '2') {
      print('Enter new balance:');
      double newBalance = double.parse(stdin.readLineSync()!);
      myATM.setBalance = newBalance;
      myATM.checkBalance();
    } else if (choice == '3') {
      print('Enter deposit amount:');
      double depositAmount = double.parse(stdin.readLineSync()!);
      myATM.deposit(depositAmount);
      myATM.checkBalance();
    } else if (choice == '4') {
      print('Enter withdraw amount:');
      double withdrawAmount = double.parse(stdin.readLineSync()!);
      myATM.withdraw(withdrawAmount);
      myATM.checkBalance();
    } else if (choice == '5') {
      print('Current Balance: ${myATM.getBalance}');
      break;
    } else {
      print('Invalid choice. Please try again.');
    }
    print('');
  }
}
