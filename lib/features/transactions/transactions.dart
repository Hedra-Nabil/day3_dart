class BankAccount {
  double _balance = 0;

  get getBalance {
    print(_balance);
  }

  set deposit(int count) {
    _balance += count;
  }

  set withdraw(int count) {
    _balance -= count;
  }
}

