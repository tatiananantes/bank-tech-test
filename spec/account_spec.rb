require 'account'

describe Account do
  subject(:account) {Account.create}

  it { is_expected.to be_a Account }

  describe '.create' do
    it 'creates an account' do
      expect(account).to be_an_instance_of(Account)
    end
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

    it 'raises an error if withdraw zero' do
      expect { account.withdraw(0) }.to raise_error('Transaction not allowed! Please select an amount to withdraw.')
    end
  end


end