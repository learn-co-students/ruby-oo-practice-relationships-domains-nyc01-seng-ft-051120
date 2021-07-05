class Character

    attr_reader :actor, :name

    @@all = []

    def initialize(actor, name)
        @actor = actor
        @name = name
        Character.all << self
    end

    def self.all
        @@all
    end

    def shows
        shows = []
        ShowRole.all.each do |role|
            if role.character == self
            shows << role.show
            end
        end
        shows
    end

    def movies
        movies = []
        MovieRole.all.each do |role|
            if role.character == self
            movies << role.movie
            end    
        end
        movies
    end

    def total_count
        total_count = movies.count + shows.count
        total_count
    end

    def self.most_appearances
        Character.all.max_by do |character|
            character.total_count
        end
    end

    

end