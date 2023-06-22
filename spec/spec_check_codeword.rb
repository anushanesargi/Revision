require 'check_codeword'

describe "looks for correct codeword 'horse'" do
  it "returns 'Correct! Come in.' when codeword is horse " do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end

  it "returns 'Close, but nope.' if codeword starts with h and ends with e" do
    expect(check_codeword("hope")).to eq "Close, but nope."
  end
end
