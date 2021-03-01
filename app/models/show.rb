class Show
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    Show.all << self
  end

  def self.all
   @@all
  end

  def characters
    CharacterShows.all.collect { |c| c.show == self ? c.character : nil } 
  end

  def on_the_big_screen
   self.characters.map { |c| c.movies }.collect { |charactermovies| charactermovies.map { |cm| cm.movie.name } }.flatten.include?(self.name)
  end

end
