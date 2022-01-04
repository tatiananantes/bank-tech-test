# frozen_string_literal: true

require 'transaction'

describe 'transaction' do
  context 'initialization values' do
    it 'initializes with the current date' do
      time = Time.now
      allow(Time).to receive(:now).and_return(time)
      new_transaction = Transaction.new
      expect(new_transaction.date).to eq(time)
    end
  end
end
