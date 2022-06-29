require "nested_array"
RSpec.describe NestedArray do
  let(:array) { [[nil, nil, nil], [nil, nil, nil]]}
  it "returns a 2 dimesional array with nil values all through the array" do
    output = [[nil, nil, nil], [nil, nil, nil]]
    expect(subject.blank_seating_chart(2, 3)).to eq(output)
  end
  it "returns 2 dimensional index where the end of the second row has a value added to it" do
    output = [[nil, nil, nil], [nil, nil, nil, 1000]]
    expect(subject.add_seat_to_row(array, 1, 1000)).to eq(output)
  end

end
