class MovieRole

    attr_accessor :character, :movie

    @@all = []

    def initialize(character,movie)
        @character = character
        @movie = movie
        MovieRole.all << self
    end

    def self.all
        @@all
    end

end