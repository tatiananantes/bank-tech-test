require 'account'

describe Account do
  it { is_expected.to be_a Account }

  describe '.create' do
    it 'creates an account' do
      account = Account.create
      expect(account).to be_an_instance_of(Account)
    end
  end

  describe '.balance' do
    it 'starts at zero' do
      account = Account.create
      expect(account.balance).to eq(0)
    end
  end

  describe '.deposit' do
    it 'increases account balance by deposit amount' do
      account = Account.create
      account.deposit(15)
      expect(account.balance).to eq(15)
    end
  end

  describe '.withdraw' do
    it 'decreases account balance by withdraw amount' do
      account = Account.create
      account.deposit(100)
      account.withdraw(30)
      expect(account.balance).to eq(70)
    end
  end


end