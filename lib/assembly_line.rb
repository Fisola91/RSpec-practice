class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    (@speed * 221) * 90/100.0
  end
end
