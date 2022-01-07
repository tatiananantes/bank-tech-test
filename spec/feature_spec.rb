require 'account'
require 'timecop'

describe 'feature test' do
  time = Time.local(2022, 1, 1)
  Timecop.freeze(time)
  
  it 'makes several transactions' do
    account = Account.new
    account.deposit(25.00)
    account.withdraw(5.00)
    account.deposit(2.50)
    expect(account.balance).to eq(22.50)
  end
  
end