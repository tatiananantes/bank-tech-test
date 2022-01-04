class Account

  attr_reader :balance

  def initialize
    @balance = 0.00
  end
  
  def self.create
    Account.new
  end

  def deposit(amount)
    @balance += amount 
  end

  def withdraw(amount)
    raise 'Transaction not allowed! Not enough funds!' if @balance < amount
    raise 'Transaction not allowed! Please select an amount to withdraw.' if amount == 0
    @balance -= amount
  end


end