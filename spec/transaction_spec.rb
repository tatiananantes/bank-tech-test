# frozen_string_literal: true

require 'transaction'

describe 'transaction' do
    
  context 'initialization values' do
    it 'initializes with the current date' do
      time = Time.now.strftime('%d/%m/%Y')
      transaction = Transaction.new(100)
      allow(Time).to receive(:now).and_return(time)
      expect(transaction.date).to eq(time)
    end
  end
end
