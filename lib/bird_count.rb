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

  def busy_days
    @birds.select { |bird| bird >= 5}.count
  end

  def day_without_birds?
    @birds.find { |bird| bird.zero?}? true : false
  end
end
