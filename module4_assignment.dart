abstract class Account {
  late int accountNumber;
  late double balance;
  Account(this.accountNumber,this.balance);

  void deposit(double amount) {
    balance += amount;
  }
  void withdraw(double amount);
}

class SavingsAccount extends Account {
  late double interestRate;
  SavingsAccount(
      super.accountNumber,
        super.balance,
        this.interestRate);


  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += (balance * interestRate);
    print('Balance is $balance interest Rate');
  }
}

class CurrentAccount extends Account {
  late double overdraftLimit;
  CurrentAccount(
    super.accountNumber,
    super.balance,
    this.overdraftLimit,
  );


  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print('Withdraw $amount. New balance: $balance');
    } else {

      print('Insufficient funds $amount');
    }
  }
}




void main() {
  SavingsAccount savingsAccount = SavingsAccount(123456789012345,800.0,0.07);
  savingsAccount.deposit(500.0);
  savingsAccount.withdraw(300.0);
  CurrentAccount currentAccount = CurrentAccount(12345679012349,1200.0,700.0);
  currentAccount.deposit(600.0);
  currentAccount.withdraw(1200.0);
}
