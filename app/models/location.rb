class Location 
    @@all = []
    attr_accessor :address

    def initialize(address)
        @address = address
        Location.all << self
    end

    def trainers
        Workplace.all.select{|x| x.location == self}.map{|x|x.trainer}
    end

    def clients
        self.trainers.map{|x| x.clients}.flatten
    end

    def client_count
        self.clients.count
    end

    def self.least_clients
        self.all.min{|x1,x2| x1.client_count <=> x2.client_count }
    end
    
    def self.all 
        @@all 
    end
    
end