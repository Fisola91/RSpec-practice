class BirdCount
  def initialize(bird_count = [])
    @birds = bird_count
  end

  def last_week
    @birds
  end

  def yesterday
    @birds[-2]
  end

  def total
    @birds.inject(:+)
  end
end
