require 'time_estimate'

describe "estimate of reading time for a text, assuming that one can read 200 words a minute" do
  it "returns 9.9 for 'Follow the design recipe to implement the following user stories in your project. User stories follow a specific format — don't worry about that too much now, you'll get the hang of it.'" do
    expect(time_estimate("Follow the design recipe to implement the following user stories in your project. User stories follow a specific format — don't worry about that too much now, you'll get the hang of it.")).to eq 9.9
  end
end