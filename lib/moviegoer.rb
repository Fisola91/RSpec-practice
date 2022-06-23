class Moviegoer
  def initialize(age)
    @age = age
  end

  def ticket_price
    @age <= 60 ? 15 : 10
  end
end
