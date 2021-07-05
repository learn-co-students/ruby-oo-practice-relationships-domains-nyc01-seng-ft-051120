class ShowRole

    attr_accessor :character, :show

    @@all = []

    def initialize(character,show)
        @character = character
        @show = show
        ShowRole.all << self
    end

    def self.all
        @@all
    end

end