class TrainerLocation
  @@all = []
  attr_accessor :trainer, :location

  def initialize(trainer, location)
   @trainer = trainer
   @location = location
   TrainerLocation.all << self
  end

  def self.all
   @@all
  end




 end
