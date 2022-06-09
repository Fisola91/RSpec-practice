require "colorful"
RSpec.fdescribe "make a colorful number" do
  context "returning true" do
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

  context "returning false" do
    it "returns false for 236 which is not colorful" do
      expect(colorful?(236)).to eq(false)
    end

    it "returns false for 255 which is not colorful" do
      expect(colorful?(255)).to eq(false)
    end

    it "returns false for 10 which is not colorful" do
      expect(colorful?(10)).to eq(false)
    end
  end
end
