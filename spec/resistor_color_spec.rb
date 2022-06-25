require "resistor_color"

RSpec.describe ResistorColors do
  it "returns two digit number when entered color names as input" do
    expect(subject.resistor).to eq(15)
  end

end
# program takes color names as input
# program output two digit number even if the input is more than two colors
