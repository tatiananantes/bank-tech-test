require 'account'

describe Account do
  it { is_expected.to be_a Account }

  describe '.create' do
    it 'creates an account' do
      account = Account.create
      expect(account).to be_an_instance_of(Account)
    end
  end


end