def convert(int)
  # case int
  # when 1 then "I"
  # when 2 then "II"
  # when 3 then "III"
  # when 4 then "IV"
  # when 5 then "V"
  # when 9 then "IX"
  # when 21 then "XXI"
  # when 50 then "L"
  # when 100 then "C"
  # when 500 then "D"
  # when 1000 then "M"
  # end

end


RSpec.describe "Roman numerals" do
  it "converts 1 for 'I'" do
    expect(convert(1)).to eq("I")
  end

  it "converts 2 for 'II'" do
    expect(convert(2)).to eq("II")
  end

  it "converts 3 for 'III'" do
    expect(convert(3)).to eq("III")
  end

  it "converts 4 for 'IV'" do
    expect(convert(4)).to eq("IV")
  end

  it "converts 5 for 'V'" do
    expect(convert(5)).to eq("V")
  end

  it "converts 9 for 'IX'" do
    expect(convert(9)).to eq("IX")
  end

  it "converts 21 for 'XXI'" do
    expect(convert(21)).to eq("XXI")
  end

  it "converts 50 for 'L'" do
    expect(convert(50)).to eq("L")
  end

  it "converts 100 for 'C'" do
    expect(convert(100)).to eq("C")
  end

  it "converts 500 for 'D'" do
    expect(convert(500)).to eq("D")
  end

  it "converts 1000 for 'M'" do
    expect(convert(1000)).to eq("M")
  end

end
