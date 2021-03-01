class Guest
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    Guest.all << self
  end

  def self.all
    @@all
  end

  def trips
   Trip.all.select { |t| t.guest == self }
  end

  def listings
   self.trips.map { |t| t.listing }
  end

  def trip_count
  self.trips.count
  end

  def self.all
   @@all
  end

  def self.pro_traveller
   Guest.all.select { |g| g.trip_count > 1 }
  end

  def self.find_all_by_name(name)
   Guest.all.select { |g| g.name == name }
  end

end
