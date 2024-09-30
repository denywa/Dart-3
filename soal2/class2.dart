class BankAccount {
  double _balance;

  BankAccount(this._balance);

  // Getter
  double get getBalance => _balance;
  // Setter
  set setBalance(double balance) => this._balance = balance;

  void deposit(double deposit) {
    if (deposit >= 50000) {
      _balance += deposit;
      print('Deposit: $deposit');
    } else {
      print('Invalid deposit amount. Minimum deposit is 50000');
    }
  }

  void withdraw(double withdraw) {
    if (withdraw >= 50000 && _balance >= withdraw) {
      _balance -= withdraw;
      print('Withdraw: $withdraw');
    } else if (withdraw < 50000) {
      print('Invalid withdraw amount. Minimum withdraw is 50000');
    } else {
      print('You do not have enough balance');
    }
  }

  void checkBalance() {
    print('Balance: $_balance');
  }
}

// Inheritance
class SavingsAccount extends BankAccount {
  double _interestRate = 1;

  SavingsAccount(double balance) : super(balance);

  void applyInterest() {
    double interest = _balance * _interestRate / 100;
    _balance += interest;
    print('Interest: $interest');
  }
}
