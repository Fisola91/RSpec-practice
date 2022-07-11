require "two_sum"

RSpec.describe "#two sum" do
  it "returns indices of two number that add up to target(9) number" do
    expect(two_sum([2, 7, 11, 15], 9)).to eq([0, 1])
  end
end
