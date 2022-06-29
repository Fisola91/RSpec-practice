require "nested_array"
RSpec.describe NestedArray do
  it "returns a 2 dimesional array with nil values" do
    expect(subject.blank_seating_chart(2, 3)).to eq([[nil, nil, nil],
                                                                              [nil, nil, nil],])
  end

end
