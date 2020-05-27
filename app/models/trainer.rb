class Trainer
 @@all = []
 attr_accessor :name

 def initialize(name)
   @name = name
   Trainer.all << self
 end

def self.all
  @@all
end

def self.most_clients
  Trainer.all.max_by { |t| t.clients.count }
end

def clients
 Client.all.select { |c| c.assign_trainer == self }
end

end
