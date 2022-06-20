class BirdCount
  attr_reader :bird_count

  def initialize(bird_count = [])
    @birds_per_day = bird_count
    validate_argument
  end

  def last_week
    @birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    @birds_per_day.count { |bird| bird >= 5 }
  end

  def day_without_birds?
    @birds_per_day.include?(0)
  end

  private

  def validate_argument
    if @birds_per_day.nil?
      raise ArgumentError, "bird count must be an array object"
    end
  end
end
