class NestedArray
  def blank_seating_chart(number_of_rows, seats_per_row)
    arr = Array.new(number_of_rows) { Array.new(seats_per_row)}
  end

  def add_seat_to_row(chart, row_index, seat_to_add)
    chart[row_index].push(seat_to_add)
    chart
  end

  def add_another_row(chart, row_to_add)

    chart[row_to_add] = Array.new(3)
    chart[row_to_add][0] = "Adu"
    chart[row_to_add][2] = "Fisola"
    chart

  end
end
# [
#   #   [nil, nil, nil],
#   #   [nil, nil, nil]
#   # ]
# nest = NestedArray.new
# nest.def subject.add_seat_to_row(chart, row_index, seat_to_add)
