def convert(int)
  "I"
end

RSpec.describe "Roman numerals" do
  it "returns I when an integer 1 is an argument" do
    expect(convert(1)).to eq("I")
  end
end
