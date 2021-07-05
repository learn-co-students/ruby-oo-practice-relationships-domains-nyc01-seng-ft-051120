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

    # def roles
    #     MovieRole.all.select do |role|
    #         role.movie == self
    #     end
    # end

    # def self.most_actors
    #     Movie.all.max_by do |movie|
    #         movie.roles.count
    #     end
    # end


    def self.most_actors
        actors = 0
        max_movie = nil
        Movie.all.each do |movie|
            if movie.actors.count > actors
                actors = movie.actors.count
                max_movie = movie
            end
        end
        max_movie
    end
    def characters
        MovieRole.all.select do |movierole|
            movierole.movie == self
            end.map do |movierole|
            movierole.character
        end
    end
    def actors 
        actors = characters.map do |character|
            character.actor
        end.uniq
    end  


end