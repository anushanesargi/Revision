require 'say_hello'

describe "says 'hello string_passed'" do
  
  it "returns 'hello kay'" do
    expect(say_hello("kay")).to eq "hello kay"  
  end

end