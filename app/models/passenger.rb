class Passenger
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    Passenger.all << self
  end

  def self.all
    @@all
  end

  def self.premium_members
   Passenger.all.select { |p| p.total_distance > 100.00 }
  end

  def self.rider_with_most_miles
   Passenger.all.max_by { |p| p.total_distance }
  end

  def rides
   Ride.all.select { |r| r.passenger == self }
  end

  def drivers
    self.rides.map { |r| r.driver }
  end

  def total_distance
   self.rides.map { |r| r.distance }.sum
  end

end
