require 'spec_helper'

describe Account do

  let(:account) {Account.new}

  before :each do
    @account = Account.new
  end

  it "can return a balance" do
    expect(account.balance).to eq(0)
  end

  it "can have money creditted to the account" do
    @account.credit(10)
    expect(@account.balance).to eq(10)
  end

  it "can have money debited from the account if sufficient funds" do
    @account.credit(10)
    @account.debit(10)
    expect(@account.balance).to eq(0)
  end

  it "can't have money debited if insufficient funds" do
    expect { @account.debit(10) }.to raise_error("Insufficient funds for transaction")
  end

end
