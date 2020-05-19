class Movie 
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        Movie.all << self
    end
    
    def productions 
        Production.all{|x| x.movie == self}
    end

    def characters 
        self.productions.map{|x| x.character} 
    end

    def character_count
        self.characters.count 
    end

    def self.all 
        @@all 
    end

    def self.most_actors 
        self.all.max{|movie1, movie2| movie1.character_count <=> movie2.character_count} 
    end
    
end