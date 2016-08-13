class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
    private
    def pin
        @pin = 1234
    end
    
    private
    def pin_error
        returns "Access denied: incorrect PIN."
    end
    public
    def display_balance(pin_number)
        if pin() == pin_number
            puts "Balance: $#{@balance}."
        else
            pin_error()
        end
    end
    public 
    def withdraw(pin_number, amount)
        if pin() == pin_number
            @balance -= amount
            puts "Withdrew #{amount}. New Balance: $#{@balance}."
    else
        pin_error()
    end
end
        
end
#checking_account = Account.new('gary', 1000)
#checking_account.balance
