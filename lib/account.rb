class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end
  
  def self.create
    Account.new
  end




end