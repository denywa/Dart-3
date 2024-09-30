class ATM {
  double _balance;
  // Constructor
  ATM(this._balance);
  // Getter
  double get getbalance => this._balance;
  // Setter
  set setbalance(double value) => this._balance = value;

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
      print('Invalid withdraw amount or You do not have enough balance');
    }
  }

  void checkBalance() {
    print('Balance: $_balance');
  }
}

void main() {
  ATM myATM = ATM(100);
  myATM.checkBalance();
  // Set
  myATM.setbalance = 200;
  myATM.checkBalance();

  myATM.deposit(50);
  myATM.checkBalance();

  myATM.withdraw(20);
  // Get
  print('Current Balance: ${myATM.getbalance}');
}
