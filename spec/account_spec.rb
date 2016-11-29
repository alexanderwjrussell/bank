require 'spec_helper'

describe Account do

  it "can return a balance" do
    expect(subject.balance).to eq(0)
  end

  it "can have money credited to the account" do
    subject.credit(10)
    expect(subject.balance).to eq(10)
  end

  it "can have money debited from the account if sufficient funds" do
    subject.credit(10)
    subject.debit(10)
    expect(subject.balance).to eq(0)
  end

  it "can't have money debited if insufficient funds" do
    expect { subject.debit(10) }.to raise_error("Insufficient funds for transaction")
  end

end
