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
        ShowRole.all.map do |role|
            role.show
        end
    end

    def movies
        MovieRole.all.map do |role|
            role.movie
        end
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