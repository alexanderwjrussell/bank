require 'spec_helper'

describe Transaction do

  it "can have money creditted to the account" do
    account.credit(10)
    expect(account.balance).to eq(10)
  end

end
