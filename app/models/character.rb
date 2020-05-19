class Character
    @@all = []
    attr_accessor :name,:actor

    def initialize(name,actor)
        @name = name
        @actor = actor
        Character.all << self
    end

    def productions 
        Production.all.select{|x| x.character ==self}
    end

    def movies 
        self.productions.map{|x| x.movie}
    end

    def movie_count
        self.movies.count
    end

    def episodes 
        Episode.all.select{|x| x.character ==self}
    end

    def shows
        self.episodes.map{|x| x.show}.uniq
    end

    def show_count
        self.shows.count
    end
    
    def appearances 
        self.show_count + self.movie_count
    end

    def self.all 
        @@all 
    end

    def self.most_appearances
        self.all.max{|char1,char2| char1.appearances <=> char2.appearances}
    end
end