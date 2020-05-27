class Driver
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    Driver.all << self
  end

  def self.all
    @@all
  end

  def self.mileage_cap(distance)
    Driver.all.select { |d| d.total_mileage > distance.to_f }
  end
  
  def rides
    Ride.all.select { |r| r.driver == self }
  end

  def passengers
    self.rides.map { |r| r.passenger }
  end

  def total_mileage
    self.rides.map { |r| r.distance }.sum
  end

end
