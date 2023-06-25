require 'diary_entry'

RSpec.describe "DiaryEntry" do
  it "constructs" do
    diary_entry = DiaryEntry.new("diary_title", "diary_contents")
    expect(diary_entry.title).to eq "diary_title"
    expect(diary_entry.contents).to eq "diary_contents"
  end
end