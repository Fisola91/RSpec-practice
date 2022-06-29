class NestedArray
  def blank_seating_chart(number_of_rows, seats_per_row)
    arr = Array.new(number_of_rows) { Array.new(seats_per_row)}
  end

  def add_seat_to_row(chart, row_index, seat_to_add)
    chart[row_index].push(seat_to_add)
    chart
  end

  def add_another_row(chart, row_to_add)
    chart[2] = Array.new(3)
    chart
  end
end
# [
#   #   [nil, nil, nil],
#   #   [nil, nil, nil]
#   # ]
# nest = NestedArray.new
# nest.def subject.add_seat_to_row(chart, row_index, seat_to_add)
