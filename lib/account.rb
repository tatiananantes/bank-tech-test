class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end
  
  def self.create
    Account.new
  end

  def deposit(amount)
    @balance += amount
    
  end


end