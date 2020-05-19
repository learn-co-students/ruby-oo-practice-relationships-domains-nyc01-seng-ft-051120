class Episode
    @@all = []
    attr_accessor :number,:character,:show

    def initialize(number,character,show)
        @number = number
        @character = character
        @show = show 
        Episode.all << self
    end

    def self.all
        @@all
    end

end