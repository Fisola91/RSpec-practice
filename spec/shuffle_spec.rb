require "shuffle"

RSpec.describe "shuffle method" do
  it "should sort an array randomly" do
    input = (1..10).to_a
    expect(shuffle(input)).to contain_exactly(1,2,3,4,5,6,7,8,10,9)
  end
end
