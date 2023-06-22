require 'greet'

describe "Return Hello Name!" do
  it "returns Hello World " do 
    result = greet("World")
    expect(result).to eq "Hello, World!"
  end
end