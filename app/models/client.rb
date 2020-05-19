class Client 
    @@all = []
    attr_accessor :name
    attr_reader :trainer

    def initialize(name)
        @name = name
        Client.all << self
    end

    def assign_trainer(trainer) 
        @trainer = trainer
    end
    
    def self.all 
        @@all 
    end

end