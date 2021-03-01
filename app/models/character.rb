class Character
  @@all = []
  attr_accessor :name, :actor

  def initialize(args)
    args.each { |key, value| instance_variable_set("@#{key}", value) unless value.nil? }
    Character.all << self
  end

  def shows
    CharacterShows.all.select { |s| s.character == self }
  end

  def movies
    CharacterMovies.all.select { |m| m.character == self }
  end

  def total_number_of_appearances
    self.shows.count + self.movies.count
  end

  def self.all
   @@all
  end

  def self.most_appearances
   Character.all.max_by{ |character| character.total_number_of_appearances  }
  end
end
