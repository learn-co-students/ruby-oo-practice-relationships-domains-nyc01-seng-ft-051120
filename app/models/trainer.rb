class Trainer 
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        Trainer.all << self
    end
    
    def self.all 
        @@all 
    end
    
    def clients
        Client.all.select{|x| x.trainer == self}
    end

    def client_count
        self.clients.count
    end

    def self.most_clients
        Trainer.all.max{|t1,t2| t1.client_count <=> t2.client_count}
    end
end