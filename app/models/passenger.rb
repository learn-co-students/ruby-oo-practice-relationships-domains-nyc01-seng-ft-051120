class Passenger 
    @@all = []
    attr_accessor :name
    
    def initialize(name)
        @name = name
        Passenger.all << self
    end


    def rides 
        Ride.all.select{|x| x.passenger == self}
    end

    def drivers 
        self.rides.map{|x| x.driver}.uniq
    end

    def total_distance
        self.rides.reduce(0){|sum,ride| sum + ride.distance}
    end
    

    def self.all 
        @@all
    end

    def self.premium_members
        self.all.select{|x| x.total_distance > 100.0}
    end
end