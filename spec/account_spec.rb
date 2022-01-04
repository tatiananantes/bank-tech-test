# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { Account.create }

  it { is_expected.to be_a Account }

  describe '.create' do
    it 'creates an account' do
      expect(account).to be_an_instance_of(Account)
    end
  end

  it 'has an empty transactions log when account is created' do
    expect(account.transactions).to eq([])
  end

  describe '.balance' do
    it 'starts at zero' do
      expect(account.balance).to eq(0)
    end
  end

  describe '.deposit' do
    it 'increases account balance by deposit amount' do
      account.deposit(15.5)
      expect(account.balance).to eq(15.5)
      expect(account.transactions[0]).to be_an_instance_of(Transaction)
    end

    it 'raises an error if deposit zero' do
      expect { account.deposit(0) }.to raise_error('Transaction not allowed! Please select another amount to deposit.')
    end

    it 'raises an error if deposit negative amount' do
      expect do
        account.deposit(-3.7)
      end.to raise_error('Transaction not allowed! Please select a positive amount to deposit.')
    end
  end

  describe '.withdraw' do
    it 'decreases account balance by withdraw amount' do
      account.deposit(100.3)
      account.withdraw(30.2)
      expect(account.balance).to eq(70.1)
    end

    it 'raises an error if not enough founds' do
      expect { account.withdraw(30) }.to raise_error('Transaction not allowed! Not enough funds!')
    end

    it 'raises an error if withdrawing zero' do
      expect { account.withdraw(0) }.to raise_error('Transaction not allowed! Please select an amount to withdraw.')
    end

    it 'raises an error if withdrawing negative amount' do
      expect do
        account.withdraw(-3.7)
      end.to raise_error('Transaction not allowed! Only positive amounts can be withdrawn.')
    end
  end
end
