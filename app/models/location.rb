class Location
  @@all = []
  attr_accessor :name

 def initialize(name)
    @name = name
    Location.all << self
  end

  def self.all
    @@all
  end

 def trainers
  TrainerLocation.all.map { |trainerlocation| trainerlocation.trainer }
 end

 def self.total_trainers
   Location.all.map { |l| l.trainers }.uniq
 end

 def self.least_clients
   Location.total_trainers[0].min_by { |trainer| trainer.clients.count }
 end

end
