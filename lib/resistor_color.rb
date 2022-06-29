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
  # def initialize(bands = [])
  #   @bands = bands
  # end


  def resistance_value(bands)

    bands = bands.map(&:to_sym)
    wrong_band_names = bands - BANDS.keys

    if wrong_band_names.any?
      raise ArgumentError, "wrong band name: #{wrong_band_names.join(', ')}" #if bands.none? { |band| BANDS.keys.include?(band) }
    end
    bands.map { |band| BANDS[band] }.join.to_i # BANDS.fetch(band)
  end
end
