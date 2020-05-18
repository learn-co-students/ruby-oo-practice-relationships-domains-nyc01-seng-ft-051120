class Actor

attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Actor.all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select do |character|
        character.actor == self
        end
    end

    def self.most_characters
        Actor.all.max_by do |actor|
            actor.characters.count
        end
    end

end