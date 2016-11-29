require 'spec_helper'

describe Account do

  let(:transaction_history) {spy :transaction_history, :new => nil, :history => [], :record_credit => nil, :record_debit => nil}


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

  it "has a transaction_history on initialize" do
    expect(subject.get_history).to eq([])
  end

  it "can record credits in transaction_history" do
    subject.credit(10)
    expect(transaction_history).to have_received(:record_credit).with(10,10)
  end

  it "can record debits in transaction_history" do
    subject.credit(10)
    subject.debit(5)
    expect(transaction_history).to have_received(:record_debit).with(5,5)
  end

end
