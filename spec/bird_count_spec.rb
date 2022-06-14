require "bird_count"

RSpec.describe BirdCount do
  let(:bird_count) { BirdCount.new([2, 5, 0, 7, 4, 1])}

  it "retuns count of last week" do
    expect(bird_count.last_week).to eq([2, 5, 0, 7, 4, 1])
  end

  it "returns number of birds visited yesterday" do
    expect(bird_count.yesterday).to eq(4)
  end

  it "returns total number of visiting birds" do
    expect(bird_count.total).to eq(19)
  end
end
