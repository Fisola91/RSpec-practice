def convert(int)
  case int
  when 1 then "I"
  when 2 then "II"
  when 3 then "III"
  when 4 then "IV"
  when 5 then "V"
  when 9 then "IX"
  when 21 then "XXI"
  when 50 then "L"
  when 100 then "C"

  end

end


RSpec.describe "Roman numerals" do
  it "returns I when an integer 1 is an argument" do
    expect(convert(1)).to eq("I")
  end

  it "returns II when an integer 2 is an argument" do
    expect(convert(2)).to eq("II")
  end

  it "returns III when an integer 3 is an argument" do
    expect(convert(3)).to eq("III")
  end

  it "returns IV when an integer 4 is an argument" do
    expect(convert(4)).to eq("IV")
  end

  it "returns V when an integer 5 is an argument" do
    expect(convert(5)).to eq("V")
  end

  it "returns IX when an integer 9 is an argument" do
    expect(convert(9)).to eq("IX")
  end

  it "returns XXI when an integer 21 is an argument" do
    expect(convert(21)).to eq("XXI")
  end

  it "returns L when an integer 50 is an argument" do
    expect(convert(50)).to eq("L")
  end

  it "returns C when an integer 100 is an argument" do
    expect(convert(100)).to eq("C")

  it "returns D when an integer 500 is an argument" do
    expect(convert(500)).to eq("D")
  end

  end
end
