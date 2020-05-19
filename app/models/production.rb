class Production
    @@all = []
    attr_accessor :movie,:character

    def initialize(movie,character)
        @movie = movie 
        @character = character
        Production.all << self 
    end
    
    def self.all 
        @@all 
    end
end