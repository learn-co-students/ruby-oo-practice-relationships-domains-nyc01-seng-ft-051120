class CharacterMovies
  @@all = []
  attr_accessor :character, :movie

  def initialize(character, movie)
   @character = character
   @movie = movie
   CharacterMovies.all << self
  end

  def self.all
   @@all
  end
end
