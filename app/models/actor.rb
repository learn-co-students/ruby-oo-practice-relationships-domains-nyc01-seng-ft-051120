class Actor 
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name 
        Actor.all << self
    end

    def characters 
        Character.all.select{|x| x.actor == self}
    end

    def character_count
        self.characters.count
    end

    def self.most_characters
        self.all.max {|actor1,actor2| actor1.character_count <=> actor2.character_count}
    end

    def self.all 
        @@all
    end
end