require 'spec_helper'

describe Statement do

  it "returns a header" do
    expect(statement.generate_header).to eq("date || credit || debit || balance\n")
  end

  it 'returns a row' do
    expect(statement.generate_row(["current date",nil,10,10])).to eq("current date ||  || 10 || 10")
  end

  it 'returns a full joined table' do
    expect(statement.generate_table([["current date",nil,10,10],["current date",nil,10,20],["current date",10,nil,10]])).to eq("date || credit || debit || balance\ncurrent date ||  || 10 || 10\ncurrent date ||  || 10 || 20\ncurrent date || 10 ||  || 10")
  end

end
