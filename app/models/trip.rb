class Trip
    @@all = []
    attr_accessor :listing, :guest

    def initialize(guest,listing)
        @listing = listing
        @guest = guest
        Trip.all << self
    end

    def self.all 
        @@all
    end
    
end
