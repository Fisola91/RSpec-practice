require "colorful"
RSpec.fdescribe "make a colorful number" do
  it "returns true for 263 which is a colorful number" do
    expect(colorful?(263)).to eq(true)
  end

  it "returns true for 255 whcih is a colorful number" do
    expect(colorful?(256)).to eq(true)
  end

  it "returns true for 243 which is a colorful number" do
    expect(colorful?(243)).to eq(true)
  end
end
