class InsufficientFundsException implements Exception {
  final String message;
  InsufficientFundsException(this.message);

  @override
  String toString() {
    return "InsufficientFundsException: $message";
  }
}
class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Deposit amount must be greater than zero.');
    }
    balance += amount;
    print('Deposited: \$${amount}');
    print('New Balance: \$${balance}');
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Withdraw amount must be greater than zero.');
    }
    if (amount > balance) {
      throw InsufficientFundsException('Insufficient funds. Available balance: \$${balance}');
    }
    balance -= amount;
    print('Withdrawn: \$${amount}');
    print('New Balance: \$${balance}');
  }
}
void main() {
  BankAccount account = BankAccount(100);

  try {
    account.deposit(50);
    account.withdraw(30);
    account.withdraw(150); 
  } catch (e) {
    print(e);
  }
}
