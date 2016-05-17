=begin
Create an Account class in the editor. The :name and :balance attributes should be readable (but not writeable!). The class' initialize method should take two parameters, name and balance, and the balance parameter should default to 100.

Finally, go ahead and store your parameters in instance variables @name and @balance, respectively.
=end

class Account
   attr_reader:name
    attr_reader:balance
    def initialize (name, balance=100)
        @name = name
        @balance = balance
    end
=begin
Add two private methods to your Account class, pin and pin_error.

pin should take no arguments and set an instance variable, @pin, equal to the PIN number 1234.

pin_error should take no arguments and should simply return the string "Access denied: incorrect PIN."
=end
    
    
    private
    def pin
        @pin = 1234
    end
    
    def pin_error
        "Access denied: incorrect PIN."
    end
    
    public
    def display_balance(pin_number)
        if pin_number == pin
            puts "Balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    def withdraw(pin_number, amount)
        if (pin_number == pin)
            @balance -= amount
            puts "Withdrew #{amount}. New balance: $#{@balance}."
        else 
            puts pin_error
        
        end
    end
    
    def deposit(pin_number, amount)
        if pin_number == pin
            @balance += amount
            puts "deposit #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
end
class CheckingAccount < Account
end

class SavingsAccount < Account
end

checking_account = CheckingAccount.new("test", 100000)

checking_account.withdraw(1234, 20000)