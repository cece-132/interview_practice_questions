require 'pry'

# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    if @age >= 60
      10
    elsif @age < 60
      15
    end
  end

  def watch_scary_movie?
    raise 'Please implement the Moviegoer#watch_scary_movie method'
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    raise 'Please implement the Moviegoer#claim_free_popcorn method'
  end
end

Moviegoer.new(21).ticket_price


