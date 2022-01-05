# frozen_string_literal: true
require './lib/transaction'
require './lib/statement'

class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0.00
    @transactions = []
  end

  def self.create
    Account.new
  end

  def deposit(amount)
    raise 'Transaction not allowed! Please select another amount to deposit.' if amount.zero?
    raise 'Transaction not allowed! Please select a positive amount to deposit.' if amount.negative?

    @balance += amount
    @transactions << Transaction.new(amount, '', @balance)
  end

  def withdraw(amount)
    raise 'Transaction not allowed! Not enough funds!' if @balance < amount
    raise 'Transaction not allowed! Please select an amount to withdraw.' if amount.zero?
    raise 'Transaction not allowed! Only positive amounts can be withdrawn.' if amount.negative?

    @balance -= amount
    @transactions << Transaction.new('', amount, @balance)
  end
end
