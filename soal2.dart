class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => this._balance;

  set balance(double balance) => this._balance = balance;

  void deposit(double deposit) {
    if (deposit > 0) {
      _balance += deposit;
      print('Deposit: $deposit');
    } else {
      print('Invalid deposit amount');
    }
  }

  void withdraw(double withdraw) {
    if (withdraw > 0 && _balance >= withdraw) {
      _balance -= withdraw;
      print('Withdraw: $withdraw');
    } else {
      print('You do not have enough balance');
    }
  }

  void checkBalance() {
    print('Balance: $_balance');
  }
}

class SavingsAccount extends BankAccount {
  double _interestRate = 1;

  SavingsAccount(double balance) : super(balance);

  void applyInterest() {
    double interest = _balance * _interestRate / 100;
    balance += interest;
    print('Interest: $interest');
  }
}

void main() {
  print('Account 1');
  var acc1 = BankAccount(0);
  acc1.checkBalance();
  acc1.deposit(15);
  acc1.checkBalance();
  acc1.withdraw(10);
  acc1.checkBalance();

  print('\nAccouont 2');
  var acc2 = SavingsAccount(100);
  acc2.checkBalance();
  acc2.applyInterest();
  acc2.checkBalance();
}
