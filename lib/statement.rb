# frozen_string_literal: true

require './lib/transaction'
require './lib/account'

class Statement
  def self.print_statement(account_transactions)
    puts 'date || credit || debit || balance'
    account_transactions.reverse_each do |transaction|
      puts "#{transaction.date} || #{float_round(transaction.credit)} || #{float_round(transaction.debit)} || #{float_round(transaction.acc_balance)}"
    end
  end

  def self.float_round(num)
    '%.2f' % num if num.is_a?(Numeric)
  end
end
