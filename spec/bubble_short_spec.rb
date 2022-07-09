require "bubble_short"

RSpec.describe "Bubble_short" do
  it "returns sorted array using the bubble short method" do
    expect(bubble_short([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
  end
end
