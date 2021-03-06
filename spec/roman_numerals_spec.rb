class Roman
    SYMBOLS = [
    ["M", 1000],
    ["D", 500],
    ["C", 100],
    ["L", 50],
    ["XXI", 21],
    ["IX", 9],
    ["V", 5],
    ["IV", 4],
    ["III", 3],
    ["II", 2],
    ["I", 1]
  ]

  def convert(int)
    result = ""
    SYMBOLS.each do |roman, integer|
      while int >= integer
        p result
        result += roman
        int -= integer
      end
    end
    result
  end
end


RSpec.describe "Roman numerals" do
  let(:roman) { Roman.new } #lazy loading and reduces duplication

  context "converting base numbers" do
    it "converts 1 for 'I'" do
      expect(roman.convert(1)).to eq("I")
    end
    it "converts 5 for 'V'" do
      expect(roman.convert(5)).to eq("V")
    end
    it "converts 50 for 'L'" do
      expect(roman.convert(50)).to eq("L")
    end

    it "converts 100 for 'C'" do
      expect(roman.convert(100)).to eq("C")
    end

    it "converts 500 for 'D'" do
      expect(roman.convert(500)).to eq("D")
    end

    it "converts 1000 for 'M'" do
      expect(roman.convert(1000)).to eq("M")
    end
  end

  context "converting additions" do
      it "converts 2 for 'II'" do
      expect(roman.convert(2)).to eq("II")
    end

    it "converts 3 for 'III'" do
      expect(roman.convert(3)).to eq("III")
    end

    it "converts 21 for 'XXI'" do
      expect(roman.convert(21)).to eq("XXI")
    end
  end

  context "converting substraction" do
      it "converts 4 for 'IV'" do
      expect(roman.convert(4)).to eq("IV")
    end

    it "converts 9 for 'IX'" do
      expect(roman.convert(9)).to eq("IX")
    end
  end

  context "calling the method multiple times" do
    it "works correctly" do
      roman.convert(1)
      roman.convert(10)
      roman.convert(100)
      roman.convert(500)
      expect(roman.convert(5)).to eq("V")
    end
  end
end
