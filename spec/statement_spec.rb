# frozen_string_literal: true

require './lib/statement'

describe Statement do
  let(:transaction_deposit) do
    double :transaction_deposit, date: '04/01/2022', credit: 2300.00, debit: '', acc_balance: 2300.00
  end
  let(:transaction_withdraw) do
    double :transaction_withdraw, date: '05/01/2022', credit: '', debit: 1300.00, acc_balance: 1000.00
  end

  describe '#print_statement' do
    it 'prints the statement in reverse order' do
      new_statement = [transaction_deposit, transaction_withdraw]
      expect do
        Statement.print_statement(new_statement)
      end.to output("date || credit || debit || balance\n" + "05/01/2022 ||  || 1300.00 || 1000.00\n" \
      "04/01/2022 || 2300.00 ||  || 2300.00\n").to_stdout
    end
  end
end
