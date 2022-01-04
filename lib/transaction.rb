# frozen_string_literal: true
require './lib/transaction.rb'
require 'time'

class Transaction
  attr_reader :date

  def initialize(amount)
    @date = Time.now.strftime('%d/%m/%Y')
    @amount = amount
  end
end
