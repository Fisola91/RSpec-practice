require "nested_array"

RSpec.describe NestedArray do

  it "returns a 2 dimesional array with nil values all through the array" do
    expected_output =
      [
        [nil, nil, nil],
        [nil, nil, nil]
      ]
    expect(subject.blank_seating_chart(2, 3)).to eq(expected_output)
  end

  describe "add seat to row exercise" do
    let(:array) do
      [
        [nil, nil, nil],
        [nil, nil, nil]]
    end
    it "returns 2D array when Josh is added to the end of the second row" do
      expected_output =
        [
          [nil, nil, nil],
          [nil, nil, nil, "Josh"]
        ]
      expect(subject.add_seat_to_row(array, 1, "Josh")).to eq(expected_output)
    end

    it "returns 2D array when Mike is added to the end of the first row"do
    expected_output =
      [
        [nil, nil, nil, "Mike"],
         [nil, nil, nil]
      ]
    expect(subject.add_seat_to_row(array, 0, "Mike")).to eq(expected_output)
    end
  end

  describe "add another row" do
    let(:array) do
       [
         ["John", nil, "Josh"],
         [nil, "Mikel", nil]]
    end

    it "adds another array ['Adu', nil, 'Fisola'] to the third row" do
      expected_output =
        [
          ["John", nil, "Josh"],
          [nil, "Mikel", nil],
          ["Adu", nil, "Fisola"]
        ]
      new_array = ["Adu", nil, "Fisola"]
      expect(subject.add_another_row(array, new_array)).to eq(expected_output)
    end

    it "adds another array [nil, 'Mary', 'Jay] to the third row" do
      expected_output =
        [
          ["John", nil, "Josh"],
          [nil, "Mikel", nil],
          [nil, "Mary", "Jay"]
        ]
      new_array = [nil, "Mary", "Jay"]
      expect(subject.add_another_row(array, new_array)).to eq(expected_output)
    end
  end

  describe "delete row from chart" do
    let(:array) do
      [
        ["John", nil, "Josh"],
        [nil, "Mikel", nil],
        ["Emma", "Viku", "Helen"],
        ["Comfort", "Israel", "Eunice"]
      ]
    end

    it "deletes row at row_index 1 of the chart" do
      expected_output =
       [
          ["John", nil, "Josh"],
          ["Emma", "Viku", "Helen"],
          ["Comfort", "Israel", "Eunice"]
       ]

      expect(subject.delete_row_from_chart(array, 1)).to eq(expected_output)
    end

    it "deletes row at row_index 3 of the chart" do
      expected_output =
      [
        ["John", nil, "Josh"],
        [nil, "Mikel", nil],
        ["Emma", "Viku", "Helen"],
      ]
      expect(subject.delete_row_from_chart(array, 3)).to eq(expected_output)
    end
  end

  describe "empty seats" do
    let(:chart) do
      [
        [1, nil, 5],
        [nil, 4, nil],
        [2, 6, nil],
        [3, nil, 0]
      ]
    end
    it "returns the number of empty seat" do
      # expected_output =
      # [
      #   [1, nil, 5],
      #   [nil, 4, nil],
      #   [2, 6, 7],
      #   [3, nil, 0]
      # ]
      expect(subject.count_empty_seats(chart)).to eq(5)

    end
  end

  # it "delete seat from row" do
  #   output = [[nil, nil, nil], [nil, nil, nil, 1000]]
  # end
end
