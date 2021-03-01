class Movie
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    Movie.all << self
  end

  def characters
    Character.all.select { |c| c.movie == self }
  end

  def actors
    self.character.map { |c| c.actor }
  end

  def self.all
   @@all
  end

  def self.most_actors
   Movie.all.max_by { |m| m.actors.count }
  end

end
