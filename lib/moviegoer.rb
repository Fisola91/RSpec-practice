class NotMovieClubMemberError < RuntimeError
end
class Moviegoer
  attr_reader :age, :member

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age <= 60 ? 15 : 10
  end

  def watch_scary_movie?
    @age >= 18 ? true : false
  end

  def claim_free_popcorn!
    # raise NotMovieClubMemberError unless member
    @member ? "🍿" : (raise NotMovieClubMemberError)
    # raise NotMovieClubMemberError, "no popcorn for you" unless @member
    # "🍿"
  end
end
movie = Moviegoer.new(17)
p movie.claim_free_popcorn!
