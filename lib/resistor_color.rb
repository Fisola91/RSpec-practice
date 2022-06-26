class ResistorColors
  BANDS = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  def resistance_value(bands)
    bands.map { |band| BANDS[band.to_sym]}.join.to_i
  end
end
