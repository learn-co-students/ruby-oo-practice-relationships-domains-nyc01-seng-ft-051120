class Ride
  @@all = []
  attr_accessor :passenger, :driver, :distance

  def initialize(args)
    args.each { |key, value|
      if value.is_a?(Integer)
        value.to_f
      end
      instance_variable_set("@#{key}", value) unless nil
    }
    Ride.all << self
  end

  def self.all
   @@all
  end

  def self.average_distance
    Ride.all.map { |r| r.distance }.sum / Ride.all.count
  end

end
