class Guest 
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        Guest.all << self
    end

    def trips
        Trip.all.select{|x| x.guest == self}
    end

    def listings 
        self.trips.map{|x| x.listing}
    end

    def trip_count 
        self.trips.count 
    end

    def self.pro_traveller 
        self.all.select{|x| x.trip_count > 1}
    end

    def self.find_all_by_name(name)
        self.all.select{|x| x.name == name}
    end

    def self.all 
        @@all
    end

end