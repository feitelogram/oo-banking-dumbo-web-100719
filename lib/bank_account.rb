class BankAccount
attr_reader :name
attr_accessor :balance, :status

@@all = []

def initialize(name,balance=1000)
    @name = name
    @balance = balance
    @status = "open"
    @@all << self
end

def deposit (amount)
   @balance += amount
end

def display_balance 
     "Your balance is $#{self.balance}."
end

def valid?
    if @balance <= 0 
        false
    elsif @status == "closed"
        false
    else
        true
    end
end

def close_account
  self.status = "closed"
end

def self.all
    @@all
end

end
