class Show
    @@all = []
    attr_accessor :name 
    def initialize(name)
        @name = name 
        Show.all << self
    end

    def on_the_big_screen
        Movie.all.select{|x| x.name.include?(self.name)}
    end

    def self.all 
        @@all 
    end
end