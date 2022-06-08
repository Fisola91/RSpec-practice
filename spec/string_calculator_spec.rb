require "string_calculator"

RSpec.describe StringCalculator do
  it "returns zero when an empty string is entered" do
    expect(subject.add("")).to eq(0)
  end

  it "returns one when one is entered" do
    expect(subject.add("1")).to eq(1)
  end

  it "returns sum of two arguments" do
    expect(subject.add("1,2")).to eq(3)
  end

  it "returns sum of two arguments that makes use of split method" do
    expect(subject.add("1", "1,2")).to eq(4)
  end

  it "returns sum when split with newlines separators and comma" do
    expect(subject.add("1,2\n3")).to eq(6)
    #expect(subject.add("//sep\n2sep5")).to eq(7)
  end

  it "returns sum when split with newlines separators and comma" do
    expect(subject.add("1,2\n3,5\n1,1,10\n5,6,1,2\n3")).to eq(40)
  end

  fit "returns an error when separator is added to end of an element" do
    expect { subject.add("1,2,") }.to raise_error(ArgumentError)
  end

  it "returns sum when scan through with the digit" do
      expect(subject.add("//;\n1;3")).to eq(4)
  end

  it "returns sum when scan through with the digit" do
    expect(subject.add("//|\n1|2|3")).to eq(6)
  end

  it "returns sum when scan through with the digit" do
    expect(subject.add("//sep\n2sep5")).to eq(7)
  end

  it "returns an error when ',' is found instead of '|'" do
    expect { subject.add("//|\n1|2,3") }.to raise_error(
      ArgumentError,
      "'|' expected but ',' found at position 3."
    )
  end

  it "returns an error when '-' is found instead of 'x'" do
    expect { subject.add("//x\n1x2x3x4-5") }.to raise_error(
      ArgumentError,
      "'x' expected but '-' found at position 7."
    )
  end

  fit "returns sum when scan through" do
    expect(subject.add("//|\n2|2|2")).to eq(6)

  end

  it "can use an arbitrary delimiter" do
    expect(subject.add("//x\n1x2x3")).to eq((6))
  end
end
