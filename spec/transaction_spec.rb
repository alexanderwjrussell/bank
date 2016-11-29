require 'spec_helper'

describe Transaction do

  it "has an empty transaction history on initialize" do
    expect(subject.history).to eq([])
  end

end
