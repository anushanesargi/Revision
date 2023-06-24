require 'encode_decode'

describe "" do
  it "" do
    expect(encode("theswiftfoxjumpedoverthelazydog", "secretkey")).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  end

  # it "" do
  #   expect(decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")).to eq "theswiftfoxjumpedoverthelazydog"
  # end
end