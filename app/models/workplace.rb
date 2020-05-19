class Workplace
    @@all = []
    attr_accessor :location,:trainer

    def initialize(location,trainer)
       @location = location
       @trainer = trainer
       Workplace.all << self
    end
    
    def self.all 
        @@all 
    end
end