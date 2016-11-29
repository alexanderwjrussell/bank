require 'spec_helper'

describe Transaction do

  let(:time) {double :time, :now => "current date"}

  context "Transaction History" do
    it "has an empty transaction history on initialize" do
      expect(subject.history).to eq([])
    end

    it 'records credits with a date' do
      subject.record_credit(50,50,time)
      expect(subject.history[-1]).to eq ["current date",50,nil,50]
    end

    it 'records debits with a date' do
      subject.record_debit(25,25,time)
      expect(subject.history[-1]).to eq ["current date",nil,25,25]
    end
  end
end
