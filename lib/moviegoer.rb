class Moviegoer
  def initialize(age)
    @age = age
  end

  def ticket_price
    @age <= 60 ? 15 : 10
  end

  def watch_scary_movie?
    @age >= 18 ? true : false
  end
end
