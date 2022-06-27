require "resistor_color"

RSpec.describe ResistorColors do
  it "returns two digit number when entered color names as input" do
    expect(subject.resistance_value( ["brown","green"] )).to eq(15)
    expect(subject.resistance_value( ["red", "orange"])).to eq(23)
    expect(subject.resistance_value( ["grey", "white"])).to eq(89)
    expect(subject.resistance_value( ["orange", "yellow"])).to eq(34)
  end
  it "returns error when bands name is entered incorrectly" do
    expect { subject.resistance_value( ["orang", "yello"]) }.to raise_error(ArgumentError, "wrong band name: orang, yello")
    expect { subject.resistance_value( ["brown", "yello"]) }.to raise_error(ArgumentError, "wrong band name: yello")
  end

end
# program takes color names as input
# program output two digit number even if the input is more than two colors
