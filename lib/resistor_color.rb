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
    # BANDS.each do |bands, value|
    #   unless bands.include?(band)
    #     raise ArgumentError, "wrong band name(check the argument provided)"
    #   end
    # end

    bands.map {do |band| BANDS[band.to_sym] }.join.to_i
    # validate_band_name
  end

  # private



  # def validate_band_name
  #   BANDS.each do |band, value|
  #     unless bands.include?(band)
  #       raise ArgumentError, "wrong band name(check the argument provided)"
  #     end
  #   end
  # end
end

resis = ResistorColors.new
p resis.resistance_value(["brown","green"] )
# # p resis.validate_band_name
# # BANDS = {
#   black: 0,
#   brown: 1,
#   red: 2,
#   orange: 3,
#   yellow: 4,
#   green: 5,
#   blue: 6,
#   violet: 7,
#   grey: 8,
#   white: 9
# }


# p BANDS.has_key?(["blue", "yellow"].to_s)
