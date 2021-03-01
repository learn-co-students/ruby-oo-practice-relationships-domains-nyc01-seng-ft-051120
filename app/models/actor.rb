class Actor
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    Actor.all << self
  end

  def self.all
   @@all
  end

  def characters
    Character.all.select { |c| c.actor == self }
  end

  def self.most_characters
    Actor.all.max_by { |a| a.characters.count}
  end
end
