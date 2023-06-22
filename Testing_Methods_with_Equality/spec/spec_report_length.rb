require 'report_length'

describe "returns the length of the string " do
  it "returns This string was 4 characters long. when passed Nope" do
    expect(report_length("Nope")).to eq "This string was 4 characters long."
  end
end