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

  it "returns number of busy days" do
    expect(bird_count.busy_days).to eq(2)
  end

  it "returns true if there was a day zero bird visited" do
    expect(bird_count.day_without_birds?).to eq(true)
  end
end
