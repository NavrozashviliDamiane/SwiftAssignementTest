struct BankAccount {
    var holderName: String
    var accountNumber: String
    var balance: Double

    init(holderName: String, accountNumber: String, initialBalance: Double) {
        self.holderName = holderName
        self.accountNumber = accountNumber
        self.balance = initialBalance
    }

    mutating func deposit(amount: Double) {
        guard amount > 0 else {
            print("Error: Deposit amount must be greater than 0.")
            return
        }
        balance += amount
        print("Deposit successful. New balance: \(balance)")
    }

    mutating func withdraw(amount: Double) {
        guard amount > 0 else {
            print("Error: Withdrawal amount must be greater than 0.")
            return
        }

        guard amount <= balance else {
            print("Error: Insufficient funds. Cannot withdraw \(amount). Current balance: \(balance)")
            return
        }

        balance -= amount
        print("Withdrawal successful. New balance: \(balance)")
    }
}

// Create a BankAccount object and perform transactions
var bankAccount = BankAccount(holderName: "John Doe", accountNumber: "123456789", initialBalance: 1000.0)

// Perform transactions
bankAccount.deposit(amount: 500.0)
bankAccount.withdraw(amount: 800.0)  // This will fail due to insufficient funds
bankAccount.withdraw(amount: 300.0)  // This will succeed

// Print the final balance
print("Final balance: \(bankAccount.balance)")
