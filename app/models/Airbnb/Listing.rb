class Listing
  attr_reader :city 
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    self.all.select { |listing| listing.city == city } 
  end

  def self.most_popular
    self.all.max_by { |listing| listing.trips.count }
  end

  def guests
    Guest.all
    .select { |guest| guest.listings.include?(self)  }
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end

end