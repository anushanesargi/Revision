require 'check_codeword'

describe "looks for correct codeword 'horse'" do
  it "returns 'Correct! Come in.' when codeword is horse " do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end
end