class Show

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Show.all << self
    end

    def self.all
        @@all
    end

    def roles
        ShowRole.all.select do |role|
            role.show == self
        end
    end

    def on_the_big_screen
        Movie.all.select do |movie|
            movie.name == self.name
        end
    end

end