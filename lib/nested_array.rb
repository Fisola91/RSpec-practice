class NestedArray
  def blank_seating_chart(number_of_rows, seats_per_row)
    arr = Array.new(number_of_rows) { Array.new(seats_per_row)}
  end

  def add_seat_to_row(chart, row_index, seat_to_add)
    chart[row_index].push(seat_to_add)
    chart
  end

  def add_another_row(chart, row_to_add)
    chart << row_to_add
  end

  def delete_row_from_chart(chart, row_index)
    chart.delete_at(row_index)
    chart
  end

  def count_empty_seats(chart)
    chart.inject(0) do |total, row|
      total += row.count { |seat| seat.nil?}
    end
  end

  def find_favorite(array_of_hash_objects)
    array_of_hash_objects.find do |row|
      row[:is_my_favorite?] == true ? row : nil
    end
  end
end
# [
#   #   [nil, nil, nil],
#   #   [nil, nil, nil]
#   # ]
# nest = NestedArray.new
# nest.def subject.add_seat_to_row(chart, row_index, seat_to_add)

# row.each do |name, data|
#   if name == "Ruby"
#     p "Hi hi"
#   end
# end
