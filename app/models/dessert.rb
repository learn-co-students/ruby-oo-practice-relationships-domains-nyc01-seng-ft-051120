class Dessert
  @@all = []
  attr_reader :name
  attr_accessor :bakery

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    Dessert.all << self
  end

  def self.all
    @@all
  end

  def ingredients
   Ingredient.all.select { |i| i.dessert == self }
  end

  def calories
    self.ingredients.map { |i| i.calorie_count }.sum
  end

end
