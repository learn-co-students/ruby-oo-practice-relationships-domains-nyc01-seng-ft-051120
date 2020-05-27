class Client
  @@all = []
  attr_accessor :name, :assign_trainer

  def initialize(name, assign_trainer=nil)
   @name = name
   @assign_trainer = assign_trainer
   Client.all << self
  end

  def self.all
    @@all
  end
  
end
