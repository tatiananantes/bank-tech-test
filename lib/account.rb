class Account

  attr_reader :balance

  def initialize
    @balance = 0.00
  end
  
  def self.create
    Account.new
  end

  def deposit(amount)
    raise 'Transaction not allowed! Please select another amount to deposit.' if amount == 0
    raise 'Transaction not allowed! Please select a positive amount to deposit.' if amount < 0
    @balance += amount 
  end

  def withdraw(amount)
    raise 'Transaction not allowed! Not enough funds!' if @balance < amount
    raise 'Transaction not allowed! Please select an amount to withdraw.' if amount == 0
    raise 'Transaction not allowed! Only positive amounts can be withdrawn.' if amount < 0
    @balance -= amount
  end


end