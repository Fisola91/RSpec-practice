require "colorful"
RSpec.describe "make a colorful number" do
  fit "returns true for 263 which is a colorful number" do
    expect(colorful?(263)).to eq(true)
  end
end
