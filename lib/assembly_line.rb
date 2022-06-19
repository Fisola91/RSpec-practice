class AssemblyLine
  CARS_PRODUCED_PER_HOUR = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    (@speed * CARS_PRODUCED_PER_HOUR) * 90/100.0
  end

  def working_items_per_minute
    (production_rate_per_hour/60).to_i
  end
end
