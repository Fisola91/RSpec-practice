require "nested_array"
RSpec.describe NestedArray do

  it "returns a 2 dimesional array with nil values all through the array" do
    output = [[nil, nil, nil], [nil, nil, nil]]
    expect(subject.blank_seating_chart(2, 3)).to eq(output)
  end

  describe "add seat to row exercise" do
    let(:array) { [[nil, nil, nil], [nil, nil, nil]]}
    it "returns 2D array where Josh is added to the end of the second row" do
      output = [[nil, nil, nil], [nil, nil, nil, "Josh"]]
      expect(subject.add_seat_to_row(array, 1, "Josh")).to eq(output)
    end

    it "returns 2D array where Mike is added to the end of the first row"do
    output = [[nil, nil, nil, "Mike"], [nil, nil, nil]]
    expect(subject.add_seat_to_row(array, 0, "Mike")).to eq(output)
    end
  end

  describe "add another row" do
    let(:array) { [["John", nil, "Josh"], [nil, "Mikel", nil]]}
    it "adds another array ['Adu', nil, 'Fisola'] to the third row" do
      output = [["John", nil, "Josh"], [nil, "Mikel", nil], ["Adu", nil, "Fisola"] ]
      expect(subject.add_another_row(array, 2)).to eq(output)
    end

    it "adds another array [nil, 'Mary', 'Jay] to the third row" do
      output = [["John", nil, "Josh"], [nil, "Mikel", nil], [nil, "Mary", "Jay"]]
      expect(subject.add_another_row(array, 2)).to eq(output)
    end
  end




  # it "delete seat from row" do
  #   output = [[nil, nil, nil], [nil, nil, nil, 1000]]
  # end

end
