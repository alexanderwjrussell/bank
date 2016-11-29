require 'spec_helper'

describe Account do

  before :each do
    @account = Account.new
  end

  it "can return a balance" do
    expect(@account.balance).to eq(0)
  end

end
