require './lib/statement.rb'

describe Statement do
  let(:transaction_deposit) { double :transaction_deposit, :date => "04/01/2022", :credit => 2300.00, :debit => '', :acc_balance => 2300.00 }
  let(:transaction_withdraw) { double :transaction_withdraw, :date => "05/01/2022", :credit => '', :debit => 1300.00, :acc_balance => 1000.00 }

  describe '#print_statement' do
    it 'prints the statement in reverse order' do 
      new_statement = [transaction_deposit, transaction_withdraw]
      expect { Statement.print_statement(new_statement) }.to output("date || credit || debit || balance\n" + "05/01/2022 ||  || 1300.00 || 1000.00\n" +
      "04/01/2022 || 2300.00 ||  || 2300.00\n").to_stdout
    end
  end
end 
