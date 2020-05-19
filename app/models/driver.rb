class Driver
    @@all = []
    attr_accessor :name
    
    def initialize(name)
        @name = name
        Driver.all << self
    end

    def rides 
        Ride.all.select{|x| x.driver == self}
    end

    def passengers 
        self.rides.map{|x| x.passenger}.uniq
    end
    
    def mileage
        self.rides.reduce(0){|sum,ride| sum + ride.distance}
    end

    def self.all 
        @@all
    end

    def self.mileage_cap(distance)
       self.all.select{|x|x.mileage > distance}
    end
end