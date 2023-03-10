class BankAccount
    attr_reader :name
    def initialize(name)
        @name
        @transactions = []
        add_transaction("Begining Balance", 0)
    end

    def credit(description, amount)
        add_transaction(description, amount)
    end

    def debit(description, amount)
        add_transaction(description, -amount)
    end

    def add_transaction(description, amount)
        @transactions.push(description: description, amount: amount)
    end

    def balance
        balance = 0
        @transactions.each do |transaction|
            balance += transaction[:amount]
        end
        return balance
    end

    def to_s
        "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
    end

    def print_register
        puts "#{name}'s Bank Account"

        puts "Desctiption\tAmount"
        @transactions.each do |transaction|
            puts transaction[:description] + "\t" + sprintf("%0.2f", transaction[:amount])
        end
        puts "Balance: #{sprintf("%0.2f", balance)}"
    end
     
end


bank_account = BankAccount.new("John")
bank_account.credit("paycheck", 100)
bank_account.debit("Groceries", 40)
puts bank_account.inspect
puts bank_account.balance

bank_account.print_register


