class Listing
  @@all = []
  attr_reader :city
  attr_accessor :name

  def initialize(name, city="")
    @name = name
    @city = city
    Listing.all << self
  end

  def trips
   Trip.all.select { |t| t.listing == self }
  end

  def trip_count
    self.trips.count
  end

  def guests
    self.trips.map { |t| t.guest }
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    Listing.all.select { |l| l.city == city }
  end

  def self.most_popular
   Listing.all.max_by { |l| l.trip_count }
  end
end
