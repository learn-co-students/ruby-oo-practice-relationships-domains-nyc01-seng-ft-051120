class Movie

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Movie.all << self
    end

    def self.all
        @@all
    end

    def roles
        MovieRole.all.select do |role|
            role.movie == self
        end
    end

    def self.most_actors
        Movie.all.max_by do |movie|
            movie.roles.count
        end
    end

end